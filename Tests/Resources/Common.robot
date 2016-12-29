*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  Selenium2Library

*** Variables ***
${REMOTE_URL}  http://localhost:4444/wd/hub
${DESIRED_CAPABILITIES}  platform:LINUX,browser:chrome,version:51.0.2704.106
${SERVER}   https://www.surveymonkey.com
${BROWSER}  Chrome
${sign_out}  xpath=//a[@href="/user/sign-out/" and .= 'Sign Out']
${sign_out_menu}  xpath=//a[@id="userAcctTab_MainMenu"]

*** Keywords ***
Begin Test Case
    #open browser  ${SERVER}  ${BROWSER}  ${DESIRED_CAPABILITIES}  ${REMOTE_URL}
    open browser  ${SERVER}  ${BROWSER}
    maximize browser window
End Test Case
    click element  ${sign_out_menu}
    sleep  1
    click element  ${sign_out}
    close browser
