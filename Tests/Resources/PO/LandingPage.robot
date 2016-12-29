*** Settings ***
Library  Selenium2Library

*** Variables ***
*** Keywords ***
Load
    open browser  http://www.surveymonkey.com
Verify Page Loaded
    wait until page contains  SurveyMonkey


