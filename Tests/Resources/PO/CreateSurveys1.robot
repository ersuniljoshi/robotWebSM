*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot

*** Keywords ***

Create the survey
#    click element  css=a[class='create-survey btn green SL_split']
#    click element  xpath=//button[@id='scratch']
#    input text  id=surveyTitle  TheNewSurvey1
#    click element  xpath=//div[@class='ReactModalPortal']//button
#    user waits for the page to load

    click element  xpath=//a[@class="create-survey btn green SL_split"]
    #click element  xpath=//button[@id="scratch"]//span
    # //div[@class="button-container"]/button[2]/span
    click element  xpath=//div[@class="button-container"]/button[2]/span
    input text  id=surveyTitle  TheNewSurvey1
    click element  xpath=//div[@class='ReactModalPortal']//button
    user waits for the page to load


