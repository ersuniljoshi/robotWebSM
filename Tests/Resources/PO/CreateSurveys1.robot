*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot
Resource  ./locator.robot

*** Keywords ***
Create The Survey
    click element  ${create_survey_button_start}
    click element  ${start_from_scratch_button}
    input text  ${survey_title}  TheNewSurvey1
    click element  ${create_survey}
    user waits for the page to load
