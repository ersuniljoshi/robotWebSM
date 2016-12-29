*** Settings ***
Library  Selenium2Library
Library  String
Resource  ./locator.robot

*** Keywords ***
Navigate sign in
    click element  ${sign_in}
Do SignIn1
   input text  ${username}  InfoBeans@Pune
   input password  ${password}  InfoBeans!@#
   click button  ${sign_in_submit}
user waits for the page to load
    : FOR  ${INDEX}  IN  RANGE  -99999999999  99999999999
     \  ${IsAjaxComplete}  Execute JavaScript  return window.jQuery!=undefined && jQuery.active==0
     \  Log  ${INDEX}
     \  Log  ${IsAjaxComplete}
     \  sleep  1
     \  Run Keyword If  ${IsAjaxComplete}==True  Exit For Loop

