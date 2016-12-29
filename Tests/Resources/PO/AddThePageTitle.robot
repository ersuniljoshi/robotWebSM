*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot
Resource  ./locator.robot

*** Keywords ***
Add The Title
    wait until page contains  TheNewSurvey1
    # click on add new ques button
    user waits for the page to load
    # click on add page title link
    click element  ${page_title_start}
    user waits for the page to load
    input text  ${page_title_field}  Details
    user waits for the page to load
    click element  ${submit_page_title}
    user waits for the page to load
