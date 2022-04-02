*** Settings ***
Library           AppiumLibrary
Suite Setup       Open Application  	http://localhost:4723/wd/hub     platformName=Android    platformVersion=11  	deviceName=emulator-5554    appPackage=de.quandoo.android.consumerapp     appActivity=com.quandoo.consumer.legacy.ui.general.SplashScreenActivity       automationName=Uiautomator2
Suite Teardown    Quit Application

*** Variables ***

${Android_Deny_Button} =  //android.widget.Button[@text="Deny"]
${RecyclerView_Button} =  //android.widget.ImageButton[@content-desc="Login"]
${Login/Signup} =   //android.widget.TextView[@text="Log in or sign up"]
${Android_Accept&Continue} =    //android.widget.Button[@text="ACCEPT & CONTINUE"]
${Android_No Thanks} =    //android.widget.Button[@text="NO THANKS"]
${Email_Element} =    //android.view.View[@index='7']//android.widget.EditText[@index='0']
${Password_Field} =    //android.widget.EditText[@text="Password"]
${P1_Element} =    //android.view.View[@index='8']//android.widget.EditText[@index='0']
${RepP1_Element} =    //android.view.View[@index='9']//android.widget.EditText[@index='0'] 
${Q.Checkbox} =    //android.widget.CheckBox[@text="I agree to Quandoo's Terms & Conditions and Privacy Policy."]
${CreateAcc_Button} =    //android.widget.Button[@text="Create account"]
${Password} =    PasswordQATester
${Login_Button} =    //android.widget.Button[@content-desc="Log in"]
${Signup_Element1} =    //android.widget.TextView[@text="Sign up now" and @index="0"]
${Auth_Landing} =    //android.view.View[@text="or" and @index="4"]
${FirstNameElement} =  //android.view.View[@index='5']//android.widget.EditText[@index='0']
${Signupnow} =    //android.view.View[@content-desc="Sign up now"]
${Email} =    fawzanandzoraiz@gmail.com
${FirstName} =    Syed
${LastNameElement} =    //android.view.View[@index='6']//android.widget.EditText[@index='0']
${LastName} =    Gillani
${Search_Rest/Cuisine} =    //android.widget.TextView[@text="Search for a restaurant or cuisine"]
${City_Element} =     //android.widget.EditText[@text="Where?"]
${City} =    Berlin
${Cuisine_Select} =    //android.widget.TextView[@text="Italian"]
${F_OpenNow} =    //android.widget.TextView[@text="Open Now"]
${FilterView} =    //androidx.cardview.widget.CardView[@resource-id="de.quandoo.android.consumerapp:id/search_results_availability_details_area"]
${Nr.OfPeople} =    //androidx.recyclerview.widget.RecyclerView[@index='2']//android.widget.RadioButton[@text='4']
${BookingDate} =    //androidx.recyclerview.widget.RecyclerView[@index='5']//android.widget.RadioButton[@index='1']
${Apply_Button} =    //android.widget.Button[@resource-id="de.quandoo.android.consumerapp:id/apply_button"]
${Landing_Availability} =    //android.widget.TextView[@text="Availability"]
${2nd_Restaurant} =    //androidx.recyclerview.widget.RecyclerView[@index="1"]//android.widget.FrameLayout[@index='1']//android.view.ViewGroup[@index='0']
${Details_Tab} =   //android.widget.TextView[@text="Details"]


*** Test Cases ***

Signup to Quandoo
    Signup
Book a restaurant
    Booking
See Details and Reviews
    Details and Reviews
Close Application
    Quit Application
    
*** Keywords ***

Signup           
      Wait until page contains element      ${Android_Deny_Button}       12
      click element        ${Android_Deny_Button}
      Wait until page contains element    ${RecyclerView_Button}      7
      Click Element    ${RecyclerView_Button}
      wait until page contains element    ${Login/Signup} 
      Click Element    ${Login/Signup} 
      wait until page contains element     ${Auth_Landing}
      # Run Keyword And Continue On Failure     Click Element    ${Android_Accept&Continue}
      # sleep     2
      # Run Keyword And Continue On Failure     Click Element    ${Android_No Thanks}
      # sleep     2      
      Swipe By Percent	    20	    99	    20	    5     500
      wait until page contains element    ${Signupnow}
      Click Element         ${Signupnow}
      wait until page contains element    ${FirstNameElement} 
      Input Text      ${FirstNameElement}       ${FirstName}
      Input Text      ${LastNameElement}       ${LastName}
      Input Text      ${Email_Element}       ${Email}
      swipe    0    495    0    100
      Input Text      ${P1_Element}       ${Password}
      Input Text      ${RepP1_Element}       ${Password}
      swipe    0    495    0    100
      Click Element    ${Q.Checkbox}
      Click Element                ${CreateAcc_Button}
  
Booking      
     
      wait until page contains element    ${Search_Rest/Cuisine}     10
      Click Element         ${Search_Rest/Cuisine} 
      wait until page contains element    ${City_Element}
      Input text     ${City_Element}    ${City}
      Click Element    //android.widget.TextView[@text="Berlin (Germany)"]
      wait until page contains element       ${Cuisine_Select}
      Click Element        ${Cuisine_Select}
      Wait until page contains element     ${F_OpenNow}        7
      Click Element       ${F_OpenNow}
      Wait until page contains element     ${FilterView}
      Click Element       ${FilterView}
      Wait until page contains element      ${Nr.OfPeople}
      Click Element       ${Nr.OfPeople}
      Click Element       ${BookingDate}
      Wait until page contains element      ${Apply_Button}    10
      Click Element      ${Apply_Button}
      Wait until page contains element      ${Landing_Availability}      7 
      Wait until page contains element    ${2nd_Restaurant}
      Click Element    ${2nd_Restaurant}

Details and Reviews      
      Wait until page contains element    ${Details_Tab}
      Click Element    ${Details_Tab}
      sleep  1
      Swipe By Percent	    20	    99	    20	    25
      Swipe By Percent	    20	    99	    20	    25
      sleep    7
 