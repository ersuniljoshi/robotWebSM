*** Settings ***
Library  Selenium2Library

*** Keywords ***

*** Test Cases ***
Test_2
    open browser  http://www.surveymonkey.com  firefox
    click element  xpath=//a[@class="sign-in"]
    open browser  http://www.google.com  firefox
    Select Window  title=Google
    switch browser  1
    select window  url=https://www.surveymonkey.com/user/sign-in/
    input text  id=username  InfoBeans@Pune
    sleep  5
    close browser
    switch browser  2
    input text  id=lst-ib  Info
    sleep  5
