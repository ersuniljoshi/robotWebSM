*** Settings ***
Library  Selenium2Library
Library  String

*** Keywords ***

Navigate sign in
    click element  xpath=.//*[@id='hd']/div/div/ol/li[1]/a

Do SignIn1
   input text  id=username  InfoBeans@Pune
   input password  id=password  InfoBeans!@#
   click button  xpath=.//*[@id='sign_in_form']/fieldset/button
user waits for the page to load
    : FOR  ${INDEX}  IN  RANGE  -99999999999  99999999999
     \  ${IsAjaxComplete}  Execute JavaScript  return window.jQuery!=undefined && jQuery.active==0
     \  Log  ${INDEX}
     \  Log  ${IsAjaxComplete}
     \  sleep  1
     \  Run Keyword If  ${IsAjaxComplete}==True  Exit For Loop

