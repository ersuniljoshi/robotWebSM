*** Settings ***
Documentation  This is a basic info about the creation of surveys1
Library  Selenium2Library
Resource  PO/locator.robot

*** Variables ***
${hub_url}  http://localhost:4444/wd/hub
${url}
${browser}  Chrome
${mode}
${platform}
${version}
${dc}

*** Keywords ***
Begin Test Case
    log to console  ${mode}
    run keyword if  '${mode}'=='local'  open browser  ${url}  ${browser}
    run keyword if  '${mode}'=='grid'  open browser  ${url}  ${browser}  ${dc}  ${hub_url}
End Test Case
    click element  ${sign_out_menu}
    sleep  1
    click element  ${sign_out}
    close browser