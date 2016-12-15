*** Settings ***
Library  Selenium2Library

*** Keywords ***
Add the title
    wait until page contains  TheNewSurvey1
# click on add new ques button
    sleep  3
# click on add page title link
    click element  xpath=//span[@class="page-title user-generated"]
    sleep  3
    input text  xpath=//div[@id="pageTitle"]  Details
    sleep  3
    click element  xpath=//*[@id="pageTitleForm"]/div[3]/a[1]
    sleep  3
