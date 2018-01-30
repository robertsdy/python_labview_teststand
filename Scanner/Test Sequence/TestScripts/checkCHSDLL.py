'''
Dec 17, 2015

This is a python 3.4 code for checking if chsDLL server is up and running OK.
Program calls URLx.py continuously then exits when chsServer responds OK

@author: robert Dy
'''
import os
import sys
while True:
    x = os.popen("python urlx.py AreYouOK()").read()
    print (x)
    if "urllib.error.URLError" in x:
        sys.exit(10061)
    if "I am OK Now" in x: 
        sys.exit(0)