*** Settings ***
Library  Selenium2Library

*** Keywords ***

Navigate sign in
    click element  xpath=.//*[@id='hd']/div/div/ol/li[1]/a

Do SignIn1
   input text  id=username  InfoBeans@Pune
   input password  id=password  InfoBeans!@#
   click button  xpath=.//*[@id='sign_in_form']/fieldset/button

