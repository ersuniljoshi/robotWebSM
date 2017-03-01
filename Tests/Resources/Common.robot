*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  Selenium2Library
Resource  PO/locator.robot

*** Variables ***
${REMOTE_URL}  http://localhost:4444/wd/hub
#${DESIRED_CAPABILITIES}  platform:LINUX,browser:chrome,version:56.0.2924.87
${DESIRED_CAPABILITIES}  platform:LINUX,browser:chrome,version:55.0
${SERVER}  https://www.surveymonkey.com
${BROWSER}  Chrome
${Local}
${Grid}

*** Keywords ***
Begin Test Case
    ${mode}  set variable  ${Local}
    ${mode}  set variable  ${Grid}
    run keyword if  '${mode}'=='${Local}'  open browser  ${SERVER}  ${BROWSER}
    run keyword if  '${mode}'=='${Grid}'  open browser  ${SERVER}  ${BROWSER}  ${DESIRED_CAPABILITIES}  ${REMOTE_URL}

End Test Case
    click element  ${sign_out_menu}
    sleep  1
    click element  ${sign_out}
    close browser
