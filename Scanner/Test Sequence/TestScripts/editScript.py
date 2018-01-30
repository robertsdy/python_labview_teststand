'''
Created on May 17, 2016

@author: rdy
'''
import argparse, os, sys, time
import configparser

c = configparser.ConfigParser()
c.read("..\\ModisEdgeScanner.ini")
TSFile = c["TS_Configuration"]["SnapOnTestScriptFile"]

def replace_line(line_num, text):
    # rename the original file to a diff filename with timestamp     
    bakFile_baseName, bakFile_ext = TSFile.rsplit('.',1)
    bakFileName = bakFile_baseName + '_' + time.strftime("%Y%m%d-%H%M%S") + '.' + bakFile_ext
    os.rename(TSFile, bakFileName)

    # read file contents of renamed file
    lines = open(bakFileName, 'r').readlines()
    lines[line_num] = text
    
    # write contents to the original file
    out = open(TSFile, 'w')
    out.writelines(lines)
    out.close()    
    
if __name__ == '__main__':
    try:
        parser = argparse.ArgumentParser(description="program to replace a line in a text file")
        parser.add_argument("line_num", help="--this is the line number read from file " + TSFile)
        parser.add_argument("text", help="--this is the text line that will be written to file" + TSFile)
        args = parser.parse_args()
        replace_line(int(args.line_num), args.text)
    except Exception as e:
        exc_type, exc_obj, exc_tb = sys.exc_info()
        fname = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]
        print("error = ", str(exc_type), ", ", fname, ", ", str(exc_tb.tb_lineno), ", ", str(e), " in function ",  sys._getframe().f_code.co_name, "\n")
