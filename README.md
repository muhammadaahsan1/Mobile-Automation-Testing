# QTest

1. Selected Technology Stack

    >Robootframework

2. Reasons behind the chosen framework and pattern(s)

    >Open Source
    >One platform which enables mobile, web and API testing
    >Keyword driven framework
    >Full extendability with Python, Java and certain other programming languages
    >Robot Framework is compatible with Windows, macOS, Unix, and Linux

3. How to make the framework work and how to execute the test(s)
    >Environment
        Python 3.5+.
        Visual Studio Code or PyCharm
        Selenium web drivers for browsers used in testing.
        NodeJS
        Appium.    
        Android Studio/Xcode
        Uiautomatorviewer
        Set Environmental Variables
    >Execution
        Copy the MobileProject_Quandoo11.robot file to your test folder
        run appium; type appium in cmd
        On Android Studio, launch an emulator
            Emulator Android Virtual Device     Pixel 4
            Android version       Android 11.0
            Boot option           Cold Boot
            RAM                   2048 MB or higher
            VM heap               512 MB     (RAM and VM Heap can be set in config file in disk)
            Launch this AVD Emulator
        Run this command in VS code;  robot --outputdir=reports MobileProject_Quandoo11.robot 
        It will run automation and will generate reports at end entailing results of all test cases

        Note: Make sure the permissions that sometimes come while installing new app, like 'Accept and Continue' from Google Chrome and 'No thanks' buttons have been maked already, 
        
        otherwise one can uncomment the two lines in the code starting from "Run Keyword and Continue on Failure"and run the test, but in this case you will receive error in one test case stating that they are not found if they are actually not found


    >Next possible steps for improvements
        Create Generic/Resource file to store variables and keywords of tests,
        Hence main test file will be more organized and will only contain main test cases headers




