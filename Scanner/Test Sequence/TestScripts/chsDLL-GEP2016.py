'''
Dec 1, 2015

This is a python 3.4 code for exposing dll API functions through an http server (Cherrypy 3.70)

@author: robert Dy
'''
import datetime
import time 
from _ctypes import byref
start_time = time.time()
from ctypes import * 
import re, os, sys
import types
import cherrypy
import configparser
import xlrd

myINIFile = "..\\ModisEdgeScanner.ini"

xlPath = "CommandScripts2DLLFunCall.xlsx"
cmd2fnDic = {}  # Command to function dictionary populated after reading xlsx file
def readCmdScriptXLS():
    try:
        wBook = xlrd.open_workbook(xlPath)
        wSheet = wBook .sheet_by_index(0)
        offset = 1 # header
        for r in range(wSheet.nrows):
            cmd2fnDic[wSheet.cell_value(r,0)] =  wSheet.cell_value(r,1)
          
    except Exception as e:
        print("readCmdScriptXLS error =", str(e))

readCmdScriptXLS()

# load dll and declare memory buffers
loadedll = cdll.LoadLibrary("..\\Code Modules\\DLL\\ScannerDiagDLL.dll")
sbuffer1 = create_string_buffer(b"", 255)
sbuffer2 = create_string_buffer(b"", 255)
intBufr1 = c_int()
intBufr2 = c_int()
uiWordBufr = c_uint()
uByteBufr = c_ubyte()
sByteBufr = c_byte()
floatBufr = c_float()
uLongBufr = c_ulong()
OUT_LIST = []           # this list holds the output text used by URLx

A,B,C,D = 0,1,2,3       # define PullUP values 
ALL, FLTSTAT, FLTCFG = 0, 1, 2

# ColdfireAdcChannels names and order of items as pin assignment (hasCalibration is not used)
PinTuples = (
        "not used", # 0
        "PVA_Amps", # 1
        "PVA_Volts", # 2
        "VBAT", # 3
        "PD1", # 4
        "PD2", # 5
        "PD3", # 6
        "PD4", # 7
        "ADC Correction" # 8
        )

UUTSysVersionList = [] # this list holds the GetSystemVersion return values

def GetSystemVersion():
    try:
        retval = loadedll.GetSystemVersion(byref(sbuffer1))
        RetString = sbuffer1.value.decode('utf-8')
        myTxt = "RValue = " +  RetString + "\n"
        UUTSysVersionList.clear()
        UUTSysVersionList.extend(RetString.split('$'))
        return retval 
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def UUTSysVer(x, myIndex):
    try:
        if len(UUTSysVersionList)<1: 
            GetSystemVersion()
        OUT_LIST.append(["SystemVersionList = ", UUTSysVersionList, "\n"])
        OUT_LIST.append(["ExpectedValue = ", x, "\n"])
        RValue = UUTSysVersionList[myIndex]
        OUT_LIST.append(["RValue = ", RValue, "\n"])
         
        myTxt = "StepType = StringValueTest\n"
        if str(x) == str(RValue) :
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"            
        OUT_LIST.append([myTxt])
        return 0
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckTestAppVersion(x): UUTSysVer(x,0)
def CheckFPGAVersion(x): UUTSysVer(x,1)
def CheckIPLVersion(x): UUTSysVer(x,4)
def CheckSPL1Version(x): UUTSysVer(x,5)

def ResetScannerUnit():
    try:
        return loadedll.ResetScannerUnit()
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
    
def DisconnectFromScannerUnit():
    try:
        return loadedll.DisconnectFromScannerUnit()
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
    
def ConnectToScannerUUT():
    try:
        c_ini = configparser.ConfigParser( strict=False )
        c_ini.read(myINIFile)
        uut_COM = int(c_ini["TS_Configuration"]["UUT_ComPort"])
        return loadedll.ConnectToScannerUnit(uut_COM)
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
    
def GetScannerDeviceType(x):
    try:
        retval = loadedll.GetScannerDeviceType(byref(intBufr1))
        myTxt = "RValue = " + str(intBufr1.value) + "\n"
        myTxt += "LowLimit = 7 \n"
        myTxt += "HighLimit = 7 \n"
        myTxt+= "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"
        if intBufr1.value == int(x) : #GEP2016 scanners return a Device Type of 7
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def SetRealtimeClock():
    xcmd = "loadedll.Set_RTC_Time_GEP(" + str(round(time.time())) + ")"
    OUT_LIST.append(["dllCallexe = ", xcmd, "\n"])
    return eval(xcmd)

def CheckRealtimeClock(x): 
    try:
        retval = loadedll.Get_RTC_Time_GEP(byref(uLongBufr))
        time_now = time.time()
        myTxt = "dllCallexe = Get_RTC_Time_GEP()\n"
        time_diff = abs(time_now - int(uLongBufr.value))
        myTxt += "RValue = " + str(time_diff) + "\n"
        myTxt += "LowLimit = 0\n"
        myTxt += "HighLimit = " + x + "\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"
        if time_diff <= int(x):
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"            
        OUT_LIST.append([myTxt])
        return retval 
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckSystemMemory():
    try:
        retval = loadedll.TestSystemMemory()
        myTxt = "dllCallexe = TestSystemMemory()\n"
        myTxt += "RValue = " + str(retval) + "\n"
        myTxt += "LowLimit = 0 \n"
        myTxt += "HighLimit = 0 \n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"
        if retval == 0:
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])


def CF_CalStruct_SetStrings():
    try:
        c_ini = configparser.ConfigParser( strict=False )
        c_ini.read(myINIFile)
        Manufacturer = c_ini["Main"]["Manufacturer"]
        StationID = Manufacturer + '--' +c_ini["Main"]["StationID"]
        ManufactDate = datetime.date.today().isoformat()
        OUT_LIST.append(["dllCallexe = loadedll.CF_CalStruct_SetStrings(", ManufactDate, ",", StationID, ")\n"])
        return loadedll.CF_CalStruct_SetStrings(c_char_p(bytes(ManufactDate,"ascii")), c_char_p(bytes(StationID,"ascii")))
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CF_CalStruct_Init():
    OUT_LIST.append(["dllCallexe = CF_CalStruct_Init()\n"])
    return(loadedll.CF_CalStruct_Init())

def CF_CalibrateADC(x):
    OUT_LIST.append(["dllCallexe = CF_CalibrateADC(", x , ")\n"])
    return(loadedll.CF_CalibrateADC(int(x)))

def CF_CalStruct_Write():
    OUT_LIST.append(["dllCallexe = CF_CalStruct_Write\n"])
    loadedll.GetScannerDeviceType(byref(intBufr1))
    return(loadedll.CF_CalStruct_Write(intBufr1.value))

def CF_ValidateCalibrationData():
    try: # print NumericLimitTest first before calling dll function to ensure TS report failure in case there is a DLL error
        myTxt = "StepType = NumericLimitTest\n"
        myTxt += "LowLimit = 0 \n"
        myTxt += "HighLimit = 0 \n"
        myTxt += "Units = retval\n"
        OUT_LIST.append([myTxt])
        retval = loadedll.CF_ValidateCalibrationData()
        myTxt = "RValue = " + str(retval) + "\n"
        if retval == 0:
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckGepWifiModule(x):
    try: # print NumericLimitTest first before calling dll function to ensure TS report failure in case there is a DLL error
        myTxt = "StepType = NumericLimitTest\n"
        myTxt += "LowLimit = 0 \n"
        myTxt += "HighLimit = 0 \n"
        myTxt += "Units = retval\n"
        OUT_LIST.append([myTxt])
        y = c_char_p(bytes(x,"ascii")) # convert to byte string then to char * 
        retval = loadedll.Test_GEP_Wireless_80211LAN(y)
#         myTxt = "retval_loadedll.Test_GEP_Wireless_80211LAN(" + x + ") = " + str(retval) + "\n"
#         retval = loadedll.GepWiFi_ModulePower(True)
#         myTxt += "retval_loadedll.GepWiFi_ModulePower(True) = " + str(retval) + "\n"
#         retval = loadedll.GepWiFi_Initialize (False)
#         myTxt += "retval_loadedll.GepWiFi_Initialize(False) = " + str(retval) + "\n"
#         retval = loadedll.GepWiFi_GetWifiNetworks(byref(sbuffer1))
#         myTxt += "retval_loadedll.GepWiFi_GetWifiNetworks = " + str(retval) + "\n"
#         myTxt += "GepWiFi_GetWifiNetworks = " + str(sbuffer1.value) + "\n"
#         retval = loadedll.GepWiFi_JoinNetwork(y)
#         myTxt += "retval_loadedll.GepWiFi_JoinNetwork(" + x + ") = " + str(retval) + "\n"
        myTxt = "RValue = " + str(retval) + "\n"
        if retval == 0:
            myTxt += "RStatus = PASS\n"
        else:
            myTxt += "RStatus = Fail\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckCFAdc(xpin, minlim, maxlim):    
    try:
        mypin = PinTuples.index(xpin)
        retval = loadedll.GetColdFireAdc(mypin, byref(floatBufr))
        myTxt = "dllCallexe = GetColdFireAdc(" + xpin + ",floatBufr)\n"
        myTxt += "RValue = " + str(floatBufr.value) + "\n"
        myTxt += "LowLimit = " + str(minlim) + "\n"
        myTxt += "HighLimit = " + str(maxlim) + "\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = Volts\n"        
        if floatBufr.value < float(minlim) or floatBufr.value > float(maxlim):
            myTxt += "RStatus = Fail\n"
        else:
            myTxt += "RStatus = PASS\n"
        OUT_LIST.append([myTxt])

        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
    
def CheckAsicRegister1(bRegister, bMask, bTestValue):
    try:
        Register = c2int(bRegister,16)
        Mask = c2int(bMask,16)
        TestValue = c2int(bTestValue,16)
        retval = loadedll.CheckAsicRegister1(Register, Mask, TestValue)
        myTxt = "RValue = " + str(retval) + "\n"
        myTxt += "LowLimit = 1\n"
        myTxt += "HighLimit = 1\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"  
                        
        if int(retval) == 1:
            myTxt += "RStatus = PASS\n"
        else: 
            myTxt += "RStatus = FAIL\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckAsicRegister2(bRegister, bMask, bTestValue):
    try:
        Register = c2int(bRegister,16)
        Mask = c2int(bMask,16)
        TestValue = c2int(bTestValue,16)
        retval = loadedll.CheckAsicRegister2(Register, Mask, TestValue)
        myTxt = "RValue = " + str(retval) + "\n"
        myTxt += "LowLimit = 1\n"
        myTxt += "HighLimit = 1\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"  
                        
        if int(retval) == 1:
            myTxt += "RStatus = PASS\n"
        else: 
            myTxt += "RStatus = FAIL\n"
        OUT_LIST.append([myTxt])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def SetAsicRegister(bWhichAsic, bRegister, byRegSetValue): 
    try:
        bWhichAsic = c2int(bWhichAsic)
        bRegister = c2int(bRegister)
        byRegSetValue = c2int(byRegSetValue,16)
        retval = loadedll.AsicSetRegister(bWhichAsic, bRegister, byRegSetValue)        
        OUT_LIST.append(["dllCallexe = loadedll.AsicSetRegister(", bWhichAsic, "," ,bRegister, ",", byRegSetValue, ")\n"])  
        return retval     
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])        

def SetFpgaRegister(wRegister, byRegSetValue):
    try:
        wRegister = c2int(wRegister,16)
        byRegSetValue = c2int(byRegSetValue,16)
        retval = loadedll.VcomSet1Reg(wRegister, byRegSetValue)
        OUT_LIST.append(["dllCallexe = loadedll.VcomSet1Reg \n"])  
        OUT_LIST.append(["hex(wRegister) = ", hex(wRegister), "\n"])
        OUT_LIST.append(["byRegSetValue = ", byRegSetValue, "\n"])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
 
def ReadFpgaRegister(wRegister):
    try:
        wRegister = c2int(wRegister,16)
        retval = loadedll.VcomGet1Reg(wRegister, byref(sByteBufr))
        OUT_LIST.append(["dllCallexe = loadedll.VcomGet1Reg \n"])
        OUT_LIST.append(["RValue = ", sByteBufr.value, "\n"])
        OUT_LIST.append(["hex(wRegister) = ", hex(wRegister), "\n"])
        OUT_LIST.append(["binary(sByteBufr.value,pre='') = ", binary(sByteBufr.value,pre=''), "\n"])
        return retval
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckFpgaRegister(wRegister, nTestBit, nTestValue):
    try:    
        wRegister = c2int(wRegister,16)
        nTestBit = c2int(nTestBit)        
        nTestValue = c2int(nTestValue,16)
        sByteBufr.__init__()
        retval = loadedll.VcomGet1Reg(wRegister, byref(sByteBufr))
        
        myListOfbitsFromByte = list(binary(sByteBufr.value,pre='',length=8))  # convert number to bin and pad with zeroes on left
        OUT_LIST.append(["Verification Value = ", sByteBufr.value,' == ',binary(sByteBufr.value,pre=''),"\n"])
        myListOfbitsFromByte.reverse()

        myTxt = "RValue = " + myListOfbitsFromByte[nTestBit] + "\n"
        myTxt += "LowLimit = " + str(nTestValue) + "\n"
        myTxt += "HighLimit = " + str(nTestValue) + "\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"        
        
        if int(myListOfbitsFromByte[nTestBit]) == nTestValue:
            myTxt += "RStatus = PASS\n"
        else: 
            myTxt += "RStatus = FAIL\n"
        OUT_LIST.append([myTxt])
        return retval

    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def ComparatorCheck(nPinNumber, nCheckValue):
    try:
#         retval = loadedll.GetComparatorValue(c2int(nPinNumber))
        xcmd = "loadedll.GetComparatorValue(" + str(c2int(nPinNumber)) + ")"
        retval = eval(xcmd)
        OUT_LIST.append(["dllCallexe = ", xcmd, "\n"])
        myTxt = "RValue = " + str(retval) + "\n"
        myTxt += "LowLimit = " + nCheckValue + "\n"
        myTxt += "HighLimit = " + nCheckValue + "\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"  
                        
        if c2int(nCheckValue) == c2int(retval):
            myTxt += "RStatus = PASS\n"
        else: 
            myTxt += "RStatus = FAIL\n"
        OUT_LIST.append([myTxt])
        return retval        
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def CheckCanRxStatus(nTestValue):
    try:
        retval = loadedll.VcomReadCANRx(byref(sByteBufr))
        OUT_LIST.append(["dllCallexe = VcomReadCANRx(sByteBufr)\n"])
        myTxt = "RValue = " + str(sByteBufr.value) + "\n"
        myTxt += "LowLimit = " + nTestValue + "\n"
        myTxt += "HighLimit = " + nTestValue + "\n"
        myTxt += "StepType = NumericLimitTest\n"
        myTxt += "Units = retval\n"  
                        
        if sByteBufr.value == c2int(nTestValue):
            myTxt += "RStatus = PASS\n" # : CAN Rx value checks okay"
        else: 
            myTxt += "RStatus = FAIL\n" # : CAN Rx value Failed"
        OUT_LIST.append([myTxt])
        return retval        
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def SetReference(x):
    OUT_LIST.append(["dllCallexe = VcomSetRef(", x , ")\n"])
    return(loadedll.VcomSetRef(int(x)))

@cherrypy.expose
def ChildThreadShutdown(self, data = None):
        '''
        Shutdown all threads in app
        '''
        OUT_LIST.append(["Shutdown all threads in app"])
        # Shutdown threads
        print("Shutdown all threads in app ")
        for t in threading.enumerate():       
            if t is not threading._MainThread:
                print(t," stopped")
                t._stop
        cherrypy.engine.exit()

@cherrypy.expose
def PromptUserPassFail(sMessage, b1="OK", b2="Cancel", oResponse=1):
    #oResponse = operator Response where if = 1 and operator chooses b2, the program will terminal via taskkill
    try:
        x = os.popen("PromptUserPassFail.exe " + '"' + sMessage + '"' + ' ' + b1 + ' ' + b2).read()
        y = x.splitlines()[0]     
        if int(oResponse) == 1 :
            OUT_LIST.append(["PromptUserPassFail = ", sMessage, " : ", y, "\n"])
            OUT_LIST.append(["StepType = StringValueTest\n"])
            OUT_LIST.append(["ExpectedValue = True\n"])            
            OUT_LIST.append(["RValue = ", y, "\n"])
            if "True" in y:
                OUT_LIST.append(["RStatus = PASS\n"])
            else: 
                OUT_LIST.append(["RStatus = FAIL\n"])
                OS_cmd("taskkill /f /im python.exe")
                cherrypy.engine.exit()
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def Pause(x):
    msecs = int(x) / 1000
    time.sleep(msecs)
    return 0

def rmChar(schrx, y ='"'):
    if type(schrx) is str: 
        if y in schrx: 
            return schrx.strip(y)
        else:
            return schrx   
    else: 
        return schrx

def c2int(n,base=10):
    if type(n) is str: 
        n = rmChar(n)
        n = int(n,base)
    return n

def binary(num, pre='0b', length=8, spacer=0):
    return '{0}{{:{1}>{2}}}'.format(pre, spacer, length).format(bin(num)[2:])
    
functions_list = [v for v in globals().values() if type(v) is types.FunctionType]

def process_script_line(tScript):
    try:
        commd = tScript.split(' ')[0]        # command is the first word before '\s'
        params = tScript[len(commd)+1:]      # parameters come after commd            

        # check if command is an OS executable (.exe file)
        if ".exe" in commd[-4:].lower():
            retval = osExecute(tScript)
            return retval                   # exit this function because there is no need to go further
        if "PromptUserPassFail" in tScript:
            params = re.sub('" "', '","', params)
            argplist = params.split(',')
        elif "CheckGepWifiModule" in tScript:
            argplist = [params]
        else:
            argplist = params.split(' ')
                        
        argplist = [x for x in argplist if x]     # remove empty item '' in list argplist

        if "Fpgaregister" in commd:  # commd is for FPGA register 
            convert2Hex = True
        else:
            convert2Hex = False

        functionDefined = False             # assume function is not defined
        for f in functions_list:            # check if function is defined
            if commd in str(f):
                functionDefined = True
                break                       # if found, exit for loop because there is no need to search further
        if not functionDefined:
            if commd in cmd2fnDic.keys():
                myTmpCmd = str(cmd2fnDic[commd]).lower()
                if "n/a" in myTmpCmd or " " in myTmpCmd:
                    raise ValueError(commd + " : " + cmd2fnDic[commd] + "  invalid in " + xlPath )
                else:
                    commd = cmd2fnDic[commd]    # convert the command script to the correct one from the xls dictionary
            else:
                raise ValueError(commd + " is not found in file " + xlPath + "\n")

        commd += '('
        for i,v in enumerate(argplist):
            if convert2Hex and i == 0 :                 # is the first argument 
                commd += str(c2int(v,16))               # convert argument from hex to dec
            else: 
                commd += v
            if i < len(argplist) - 1: commd += ','      # not last argument 
        commd += ')'
        # print memory buffers is used directly by urllib client request        
          
        if functionDefined:
            retval = eval(commd)
        else:
            retval = exe(commd)             # if function is not defined in globals, use def exe()

        myTxt = "RetVal = " + str(retval) + "\n"
        if "sbuffer1" in commd: myTxt += "sbuffer1 = " + str(sbuffer1.value) + "\n"
        if "sbuffer2" in commd: myTxt += "sbuffer2 = " + str(sbuffer2.value) + "\n"
        if "intBufr1" in commd: myTxt += "intBufr1 = " + str(intBufr1.value) + "\n"
        if "intBufr2" in commd: myTxt += "intBufr2 = " + str(intBufr2.value) + "\n"
        if "uiWordBufr" in commd: myTxt+= "sWordBufr= " + str(uiWordBufr.value) + "\n"
        if "uByteBufr" in commd: myTxt+= "uByteBufr= " + str(uByteBufr.value) + "\n"
        if "floatBufr" in commd: myTxt+= "sFloatBufr= " + str(floatBufr.value) + "\n"
        print('commd = ' + commd + '\t ' + myTxt)
        OUT_LIST.append(myTxt)
        return retval 
    except Exception as e: 
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])  

def osExecute(exeCommand):
    try:
        OUT_LIST.append(["OS_CommandExecuted = ", exeCommand, "\n\n"])
        print("OS_CommandExecuted = ", exeCommand, "\n\n")
        os.popen(exeCommand).read()
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def exe(scode):
    try:
        xcmd = "loadedll." + re.sub('"','',scode)
        print("dllCallexe = ", xcmd)
        OUT_LIST.append(["dllCallexe = ", xcmd, "\n"])   
        return eval(xcmd)
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

def OS_cmd(mycmd):
    return os.system(mycmd)

def AreYouOK():
    textResponse = "I am OK Now\n"
    OUT_LIST.append([textResponse])
    print (textResponse)

def ProcessFile(infile):
    try:                   
        elnum = 0
        labelnum = ""
        lcode = []
        with open(infile, mode='r', encoding="utf-8", errors='ignore') as f_read:
            for line in iter(f_read):
                elnum += 1                       # note the line number for script audit 
                if ';' in line:                  # ignore all text after comment indicator ';'   
                    tscript = line.split(';')[0] # tscript contains the actual script text
                else:
                    tscript = line
                    
                if tscript.strip() == '' : 
                    continue                     # ignore blank lines

                if "===" in tscript or "---" in tscript:             
                    # lines with "---" are used as heading/label    
                    # print label as section name in ini file format
                    mySectionLabel = tscript.split("\n")[0]
                    mySectionLabel = re.sub("[===]+","===",mySectionLabel)  #heading 1
                    mySectionLabel = re.sub("[---]+","---",mySectionLabel)  #heading 2
                    OUT_LIST.append(["[", str(elnum), ". ", mySectionLabel, "]\n\n"])
                    continue                     # it is just a label, do nothing more, next line please
                    
                if tscript[0].isnumeric():             # first character is numeric text 
                    # labeled line number must be followed by a tab delimiter
                    tscript = line.split("\t",1)[1]    # line content split once

                tscript = re.sub('\s+', ' ', tscript.strip())  # replace white spaces, tabs, newlines with " " and remove leading spaces     
                if not tscript.strip(): continue  # ignore blank lines
                tscript = re.sub("pause", "Pause", tscript)
                tscript = re.sub("ms", "", tscript)
                tscript = re.sub("Pullup", "PullUp", tscript)
                tscript = re.sub("Pulldown", "PullDown", tscript)
                tscript = re.sub("SetG15PullUpVbat", "SetG15PullupVbat", tscript)
                tscript = re.sub("Fpgaregister", "FpgaRegister", tscript)
                tscript = re.sub("checkAsicRegister", "CheckAsicRegister", tscript)
                tscript = re.sub("FLT\+ALL", "ALL", tscript)
                tscript = re.sub("FLT\+STATUS", "FLTSTAT", tscript)
                tscript = re.sub("FLT\+CONFIG", "FLTCFG", tscript)
                OUT_LIST.append(["[", str(elnum), ". ", tscript, "]\n"])
                print("[", str(elnum), ". ", tscript, "]")
                process_script_line(tscript)  
        
        myTxt = ";ProcessFileRunTime = " + str(round((time.time()-start_time),3)) + " secs\n"
        OUT_LIST.append(myTxt)
        print("\nFinished processing: " + infile)
        
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

gfunctions_list = [v for v in globals().values() if type(v) is types.FunctionType]
# get the function name from functions list
functions_list = []
for i in gfunctions_list:
    x = str(i)
    functions_list.append(x[len("<function "):x.index(" at")])

class CServer( object ) :
    @cherrypy.expose
    def clear_list(self):
        OUT_LIST.clear()
    @cherrypy.expose
    def do_it(self, **params):
        try:
            tStart = time.time()
            ''' e.g. http://localhost:777/do_it?f=exe&1="p1"&p2="2"
            parameters format :
                1.  f = function name 
                2.  p1 = first parameter
                3.  p2 = second parameter... and so on 
            '''
            commd = cherrypy.request.params.get('f')
            # http://localhost:777/do_it?f="ShutItDown"
            
            if "ShutItDown" in commd: 
                return cherrypy.engine.exit()
            if "ReStart" in commd:
                return cherrypy.engine.restart()            
    
            dCmd = ""
            for i in sorted(params.keys()):
                dCmd += params[i]
            
            functionDef = False                 # assume function is not defined
            for fl in functions_list:           # check if function is defined
                if fl in commd:
                    functionDef = True
                    break            
            if functionDef:
                retval = eval(dCmd)
            else:                               # if function is not defined in globals, use def exe()
                retval = exe(dCmd) 
            # print memory buffers is used directly by urllib client request
            myTxt = "retval = " + str(retval) + "\n"
            if "sbuffer1" in dCmd: myTxt += "sbuffer1 = " + str(sbuffer1.value) + "\n"
            if "sbuffer2" in dCmd: myTxt += "sbuffer2 = " + str(sbuffer2.value) + "\n"
            if "intBufr1" in dCmd: myTxt += "intBufr1 = " + str(intBufr1.value) + "\n"
            if "intBufr2" in dCmd: myTxt += "intBufr2 = " + str(intBufr2.value) + "\n"
            if "uiWordBufr" in dCmd: myTxt+= "uiWordBufr= " + str(uiWordBufr.value) + "\n"
            if "uByteBufr" in dCmd: myTxt+= "uByteBufr= " + str(uByteBufr.value) + "\n"
            if "floatBufr" in dCmd: myTxt+= "floatBufr= " + str(floatBufr.value) + "\n"
            if "uLongBufr" in dCmd: myTxt+= "uLongBufr= " + str(uLongBufr.value) + "\n"            
#             myTxt += "RunTime = " + str(round((time.time()-start_time),3)) + " secs\n"
            OUT_LIST.append(myTxt)
    
            return bytes(str(OUT_LIST),'utf8')
    
        except Exception as e:
            exc_type, exc_obj, exc_tb = sys.exc_info()
            fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
            print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
            OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
                
if __name__ == "__main__":
    try:
        cherrypy.server.socket_port = 777
        # INADDR_ANY: listen on all interfaces
        cherrypy.server.socket_host = 'localhost' # "0.0.0.0" #
        conf = { '/':
          { 'tools.staticdir.on' : True,
            'tools.staticdir.dir' : "C:\\",
          }    }
        cherrypy.quickstart( CServer(), config = conf )
    except Exception as e:    
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUT_LIST.append(["error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])
    finally:
        print ("\n chsDLL runtime is %5.3f seconds" % (time.time() - start_time))
