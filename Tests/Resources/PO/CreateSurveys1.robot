*** Settings ***
Library  Selenium2Library

*** Keywords ***

Create the survey
    click element  css=a[class='create-survey btn green SL_split']
    click element  xpath=//button[@id='scratch']
    input text  id=surveyTitle  TheNewSurvey1
    click element  xpath=//div[@class='ReactModalPortal']//button
    sleep  2
