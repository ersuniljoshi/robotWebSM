*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  Selenium2Library

*** Variables ***
${REMOTE_URL}  http://localhost:4444/wd/hub
${DESIRED_CAPABILITIES}  platform:LINUX,browser:chrome,version:51.0.2704.106
${SERVER}   https://www.surveymonkey.com
${BROWSER}  Chrome


*** Keywords ***
Begin Test Case
    open browser  ${SERVER}  ${BROWSER}  ${DESIRED_CAPABILITIES}  ${REMOTE_URL}
    maximize browser window

End Test Case
    close browser
