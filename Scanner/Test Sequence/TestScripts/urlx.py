'''
Dec 1, 2015

This is a python 3.4 code for sending commands to chsDLL server

@author: robert Dy
'''
import argparse
import time
import datetime
import urllib.request
from email.header import UTF8
from queue import Empty
import os, sys  

xHost = "localhost"
xPort = "777"

OUTLIST = []

# logFile = "chsDLL_" + \
#           datetime.datetime.fromtimestamp(time.time()).strftime('%Y-%m-%d_%H') + \
#           ".txt"

def outputOfURL(xVar):
    try:
        with open(logFile, 'a') as xText:
            if type(xVar) is list:
                for i in xVar:
                    xText.write(i)
            else: 
                xText.write(xVar)
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
 
if __name__ == '__main__':
    try:
        parser = argparse.ArgumentParser(description="program to execute a command to chsDLL.py")
        parser.add_argument("URL_text", help='-- example: ProcessFile("step47.txt")')
        parser.add_argument('-o', "--logfile", action="store", help='-- this is the name of the output file')
        args = parser.parse_args()
                
        if args.logfile:
            logFile = args.logfile
        
        URLText = "http://"+xHost+':'+xPort+"/do_it?f=" + args.URL_text
        
        with urllib.request.urlopen(URLText) as response:
            html = response.read()
        if "ShutItDown" in args.URL_text:
            print("ShutDown command was requested ... goodbye :-)") 
        else:
            list_output = eval(html.decode("utf8"))
            for x in list_output:
                if type(x) is list:
                    for j in x: 
                        OUTLIST.append(str(j))
                        print(j, end='')
                else:
                    OUTLIST.append(str(x) + '\n')
                    print(x)
            
            URLText = "http://"+xHost+':'+xPort+"/clear_list"    
            urllib.request.urlopen(URLText)
            
    except urllib.error.URLError as e:
        messageL = ["urllib.error.URLError =", e.reason]
        print(messageL) 
        OUTLIST.append(messageL)
    except Exception as e:  
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("URLxerror = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
        OUTLIST.append(["URLxerror = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n\n"])

    finally:
        if args.logfile:
            outputOfURL(OUTLIST)        