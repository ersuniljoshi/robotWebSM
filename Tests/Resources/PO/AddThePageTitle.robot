*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot

*** Keywords ***
Add the title
    wait until page contains  TheNewSurvey1
    # click on add new ques button
    user waits for the page to load
    # click on add page title link
    click element  xpath=//span[@class="page-title user-generated"]
    user waits for the page to load
    input text  xpath=//div[@id="pageTitle"]  Details
    user waits for the page to load
    click element  xpath=//*[@id="pageTitleForm"]/div[3]/a[1]
    user waits for the page to load
