*** Settings ***
Library  Selenium2Library

*** Keywords ***

*** Test Cases ***
Test_1
    open browser  http://www.surveymonkey.com  firefox
    open browser  http://www.google.com  chrome
    switch browser  1
    click element  xpath=//a[@class="sign-in"]
    switch browser  2
    click element  id=lst-ib
    input text  id=lst-ib  infobeans
    close all browsers
