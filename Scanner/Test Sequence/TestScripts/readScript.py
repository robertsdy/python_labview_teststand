'''
Created on May 17, 2016

@author: rdy
'''
import argparse, os, sys, time
import configparser

c = configparser.ConfigParser()
c.read("..\\ModisEdgeScanner.ini")
TSFile = c["TS_Configuration"]["SnapOnTestScriptFile"]

def readLine(line_no):
    with open(TSFile,'r') as infile:
        data = infile.readlines()
    return (data[line_no])
    
if __name__ == '__main__':
    try:
        parser = argparse.ArgumentParser(description="program to read a line in a text file given a line number")
        parser.add_argument("line_num", help="--this is the line number read from file " + TSFile)
        args = parser.parse_args()
        d_line = int(args.line_num)
        print(readLine(d_line))
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
