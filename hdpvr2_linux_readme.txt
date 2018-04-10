    Minimum requirements:
    Ubuntu 12 or higher
    gcc >= 4.6
    build-essential
    
    Tested on Ubuntu 14.04.2 LTS, Ubuntu 14.04.3 LTS and Ubuntu 16.04 LTS 32/64bit.
    
    Extract hauppauge_hdpvr2_.tar.gz
    For this guide the file was saved and extracted on Desktop.
    
    Open Terminal window.
    
    The easiest way to open the Terminal is to use the 'search' function on the dash and type "terminal" or use the keyboard shortcut.
    
    Ctrl + Alt + T
    
    Install build-essential
    $ sudo apt-get install build-essential
    
    Move to hauppauge folder on Desktop
    $ cd Desktop
    $ cd hauppauge_hdpvr2_
    
    Copy file 99-Hauppauge-PVR2.rules
    
    $ sudo cp 99-Hauppauge-PVR2.rules /etc/udev/rules.d/
    
    Build the application
    
    if you have a 32bit version of Linux type the following
    $ make cpu=i386
    
    if you have a 64bit version of Linux type the following
    $ make
    
    The application should be built now.
    
    Connect the HD PVR 2 to the computer.
    To check if detected type the following
    
    $ lsusb
    It should show 'Hauppauge' on the list as a Bus Device.
    
    Move into the application folder.
    
    $ cd TestApp/build/
    
    Run the following command to capture component and save to file.
    
    $ ./HDPVR2-testApp -c -f video.ts
    
    This will start capturing a file called video.ts to the build folder.
    
    To stop recording click Ctrl + C on your keyboard.
    
    =================================================
    Test application command line usage:
    
    Usage: ./HDPVR2-testApp [-hcspb] [-a <aspect_ratio>] -f <output_file>
    
     Arguments:
       -h - this help
      Mode:
       default: HDMI
       -c - component
       -s - composite
      Output:
       default: stdout
       -f <output_file> - file
       -p - use named pipe instead
       only MPEG-2 transport stream is available now
      Other options:
       -a <aspect_ratio> - enforce aspect ratio
         examples: '-a 1.33' or '-a 4/3'
       -b - increase audio input gain
    
    Note:
    Capture should be stopped by sending SIGINT (Ctrl-C from terminal).
