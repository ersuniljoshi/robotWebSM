*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  Selenium2Library

*** Variables ***
${REMOTE_URL}  http://localhost:4444/wd/hub
${DESIRED_CAPABILITIES}  platform:LINUX,browser:chrome,version:51.0.2704.106
${SERVER}   https://www.surveymonkey.com
${BROWSER}  chrome


*** Keywords ***
Begin Test Case
    open browser    http://www.surveymonkey.com  ${SERVER}  ${BROWSER}  ${DESIRED_CAPABILITIES}  ${REMOTE_URL}
    #open browser  ${SERVER}  ${BROWSER}
    maximize browser window


End Test Case
    close browser