*** Settings ***
Library    AppiumLibrary

*** Variables ***

${RecyclerView_Button} =  //android.widget.ImageButton[@content-desc="Login"]
${Login/Signup} =   //android.widget.TextView[@text="Log in or sign up"]
${Email_Field} =    //android.widget.EditText[@text="Email address"]
${Password_Field} =    //android.widget.EditText[@text="Password"]
${Login_Button} =    //android.widget.Button[@content-desc="Log in"]
${Signup_Element} =    //android.view.View[@content-desc='Sign up now']
${FirstName} =    //android.widget.EditText[@bounds="[66,831][478,963]"





*** Test Cases ***
Open_Application
       Open Application  	http://localhost:4723/wd/hub     platformName=Android    platformVersion=8.1  	deviceName=emulator-5554    appPackage=de.quandoo.android.consumerapp     appActivity=com.quandoo.consumer.legacy.ui.general.SplashScreenActivity       automationName=Uiautomator2
     # Open Application  	  http://localhost:4723/wd/hub    platformName=Android  	 deviceName=emulator-5554       appPackage=chat21.android.demo      appActivity=chat21.android.demo.SplashActivity      automationName=Uiautomator2

      sleep       15
      Click Element    ${RecyclerView_Button}
      sleep      5
      Click Element    ${Login/Signup} 
      sleep     7
      Click Element    ${Signup_Element}


      