# xchat module info
__module_name__ = "pyCHSDLL" 
__module_version__ = "1.0" 
__module_description__ = "Prints the windowtitle of running pyCHSDLL proccesses" 
 
import ctypes, subprocess, re
from ctypes import byref, c_int
 
# on channel message event handler
def on_message(word, word_eol, userdata):
 
    # register winapi functions
    EnumWindows = ctypes.windll.user32.EnumWindows
    EnumWindowsProc = ctypes.WINFUNCTYPE(ctypes.c_bool, ctypes.POINTER(ctypes.c_int), ctypes.POINTER(ctypes.c_int))
    GetWindowText = ctypes.windll.user32.GetWindowTextW
    GetWindowTextLength = ctypes.windll.user32.GetWindowTextLengthW
    IsWindowVisible = ctypes.windll.user32.IsWindowVisible
    GetWindowThreadProcessId = ctypes.windll.user32.GetWindowThreadProcessId
 
    # this is called for each window
    def foreach_window(hwnd, lParam):
        # make sure it's a visible window
        if IsWindowVisible(hwnd):
 
            # get the length of the title, create a buffer then fetch the text to the buffer
            length = GetWindowTextLength(hwnd)
            buff = ctypes.create_unicode_buffer(length + 1)
            GetWindowText(hwnd, buff, length + 1)
 
            # if the title contains an illegal character it will throw an error (like the (tm) in Skype(tm)). 
            # doesn't matter in out case tho, we only need the title of the x264 window which contain no such chars 
            try:
                windowtitle = buff.value;
                if "pyCHSDLL" in windowtitle:
                    # get the proccessid from the windowhandle
                    processID = c_int()
                    threadID = GetWindowThreadProcessId(hwnd,byref(processID))
 
                    # we use WMIC to fetch the commandline of the process. It's a commandline interface for WMI
                    # a sort of query language to fetch various OS stuff. 
                    # more info: http://technet.microsoft.com/en-us/library/bb742610.aspx
                    cmd = 'WMIC process where processid='+str(processID.value)+' get Commandline /Format:csv'
 
                    # execute the command
                    proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
                    cmdLine = "";
 
                    # fetch the command line. The last one is the command line, the first lines are carriage-returns etc
                    # Lazy hack
                    for line in proc.stdout:
                        cmdLine = str(line)
                        print(cmdLine)
 
                    # get the file part of the command line
                    file = cmdLine.strip().split(" ")[-1];
 
                    # separate the directory from the file
                    split = file.split("\\"); #"
 
                    # get the episode number (and version if any)
                    rg = re.compile('(\d+(v\d+)?)',re.IGNORECASE|re.DOTALL);
                    m = rg.search(split[0]);
                    if m:
                        split[0] = re.sub(m.group(1), "", split[0]);
                        split[0] += " "+m.group(1);
 
                    # create the message
                    encodeMessage = split[0]+" part "+split[-1][:split[-1].find(".")]+": "+windowtitle;
 
                    # say it in the channel
                    xchat.command('say '+encodeMessage)
                    pass;
            except:
                # something went wrong, write in xchat console
                print(__module_name__+": Unexpected error:"+ sys.exc_info()[0])
                pass;
 
    # check if .encoding is in the message
    if ".encoding" in word[1]:
        # finds and returns a count of instances of a process
        cmd1 = 'WMIC process where Caption="x320.exe" get Commandline /Format:csv'
 
        # execute the command
        proc1 = subprocess.Popen(cmd1, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        cmdLine1 = "";
 
        # fetch the command line. The last one is the command line, the first lines are carriage-returns etc
        # Lazy hack
        for line in proc1.stdout:
            cmdLine1 += str(line)
 
        # check if anything is encoding, otherwise tell that nothing is encoding
        if "No Instance(s) Available" in cmdLine1:
                xchat.command('say nothing is encoding right now')
        else:
            EnumWindows(EnumWindowsProc(foreach_window), 0)
 
# hook the channel message event
# xchat.hook_print('Channel Message', on_message);
 
# write to xchat console upon load
print (__module_name__+" loaded.");
