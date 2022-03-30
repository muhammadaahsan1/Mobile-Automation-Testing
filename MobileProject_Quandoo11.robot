
*** Settings ***
Library    AppiumLibrary

*** Variables ***

${Android_Deny_Button} =  //android.widget.Button[@text="Deny"]
${RecyclerView_Button} =  //android.widget.ImageButton[@content-desc="Login"]
${Login/Signup} =   //android.widget.TextView[@text="Log in or sign up"]
${Android_Accept&Continue} =    //android.widget.Button["ACCEPT & CONTINUE"]
${Android_No Thanks} =    //android.widget.Button["NO THANKS"]
${Email_Field} =    //android.widget.EditText[@text="Email address"]
${Password_Field} =    //android.widget.EditText[@text="Password"]
${Login_Button} =    //android.widget.Button[@content-desc="Log in"]
${Signup_Element1} =    //android.widget.TextView[@text="Sign up now" and @index="0"]
${firstname} =  //android.view.View[@index="5"]//android.widget.EditText[@index="0"]
${Signupnow} =    //android.view.View[@content-desc="Sign up now"]//android.widget.TextView[@text="Sign up now"]




*** Test Cases ***
Open_Application
      Open Application  	http://localhost:4723/wd/hub     platformName=Android    platformVersion=11  	deviceName=emulator-5554    appPackage=de.quandoo.android.consumerapp     appActivity=com.quandoo.consumer.legacy.ui.general.SplashScreenActivity       automationName=Uiautomator2
           
      # sleep    9
      # click element    ${Android_Deny_Button}
      # Wait until page contains element    ${RecyclerView_Button}      7
      
      # Click Element    ${RecyclerView_Button}
      # sleep      5
      # Click Element    ${Login/Signup} 
      # sleep      2
      # # Click Element    ${Android_Accept&Continue}
      # # sleep     2
      # # Click Element    ${Android_No Thanks}
      # sleep     2
      
      # # Swipe by percent    50     50     50    70  2000
      # # Swipe By Direction    Down
      #  swipe    0    495    0    100
      #  sleep    2
      # # Scroll Down     //android.view.View[@content-desc="Sign up now"]
      # # sleep     5
      # Click Element         //android.view.View[@content-desc="Sign up now"]

      # sleep    2
      # Input Text      //android.view.View[@index='5']//android.widget.EditText[@index='0']       Syed Muhammad Ahsan
      # Input Text      //android.view.View[@index='6']//android.widget.EditText[@index='0']       Gillani
      # Input Text      //android.view.View[@index='7']//android.widget.EditText[@index='0']       muhammadahsangillani@gmail.com
      # swipe    0    495    0    100
      # Input Text      //android.view.View[@index='8']//android.widget.EditText[@index='0']       QAMobileTester
      # Input Text      //android.view.View[@index='9']//android.widget.EditText[@index='0']       QAMobileTester
      # swipe    0    495    0    100
      # Click Element    //android.widget.CheckBox[@text="I agree to Quandoo's Terms & Conditions and Privacy Policy."]
      # Click Element                //android.widget.Button[@text="Create account"]
      

      sleep     6
      click element        ${Android_Deny_Button}
      Wait until page contains element    ${RecyclerView_Button}      7
      
      Click Element    ${RecyclerView_Button}
      sleep      2
      Click Element    ${Login/Signup} 
      sleep       3
      Input Text      //android.view.View[@index='5']//android.view.View[@index='1']//android.widget.EditText[@index='0']       muhammadahsangillani@gmail.com
      Input Text      //android.view.View[@index='6']//android.view.View[@index='1']//android.widget.EditText[@index='0']       QAMobileTester
      swipe    0    495    0    100
      Click Element       //android.widget.Button[@text="Log in"]
      sleep    4
      Click Element         //android.widget.TextView[@text="Search for a restaurant or cuisine"]
      sleep     2
      Input text     //android.widget.EditText[@text="Where?"]    Berlin
      Click Element    //android.widget.TextView[@text="Berlin (Germany)"]
      # Click Element        //android.widget.TextView[@text="Berlin"]
      sleep     2
      Click Element        //android.widget.TextView[@text="Italian"]
      sleep     3
      Click Element        //android.widget.TextView[@resource-id="de.quandoo.android.consumerapp:id/show_filter"]
      sleep     2
      Click Element       //android.widget.TextView[@text="Open Now"]
      Click Element       //android.widget.TextView[@resource-id="de.quandoo.android.consumerapp:id/search_results_availability_people_count"]
      Click Element       //androidx.recyclerview.widget.RecyclerView[@index='2']//android.widget.RadioButton[@text='4']
      Click Element      //androidx.recyclerview.widget.RecyclerView[@index='5']//android.widget.RadioButton[@index='1']
      Click Element      //android.widget.Button[@resource-id="de.quandoo.android.consumerapp:id/apply_button"]
      sleep     2
      Click Element     //android.widget.Button[@resource-id="de.quandoo.android.consumerapp:id/retry_button"]
      Wait until page contains element      //android.widget.TextView[@text="Availability"]     
      sleep      2
      Click Element    //android.widget.FrameLayout[@index='1']
      sleep      2
      Click Element    //android.widget.TextView[@text="Details"]
      sleep    1
      swipe    0    495    0    100
      # sleep   1
      # swipe    0    495    0    100
      # sleep   1
      # swipe    0    495    0    100




      
     
     
    
          



        # 
      # sleep     2
      # 
      # Scroll Down       ${Signup_Element}