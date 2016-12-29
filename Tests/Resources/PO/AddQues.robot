*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot

*** Keywords ***
Add ques to survey
    # Click on add new question button
    wait until page contains  TheNewSurvey1
    user waits for the page to load
    click element  xpath=.//*[@class='survey-page-body']/form/div[1]/div[2]/span/a[1]/span
    user waits for the page to load
    unselect checkbox  xpath=//*[@id="suggestQ"]
    user waits for the page to load

    #Add Single tex question
Add to survey
    # select from dropdown for 1st ques
    wait until page contains  TheNewSurvey1
    user waits for the page to load
    click element  xpath=.//a[@id='changeQType']/span[1]

    # Select single text box preference
    click element  xpath=.//*[@id='create']/ul/li[8]/a[1]
    user waits for the page to load
    # Add 1st ques
    Input Text  id=editTitle  Which is your favorite ice-cream  # Question 1 text
    # save the 1st ques
    Click Element  css=a[class='btn teal save']
    user waits for the page to load
    # click on add new ques button for 2nd ques
    click element  xpath=.//*[@class='survey-page-body']/form/div[1]/div[2]/span/a[1]
    user waits for the page to load
    wait until page contains  TheNewSurvey1
    user waits for the page to load

    #Add another ques
    # select from dropdown for 2nd ques
    click element  xpath=.//a[@id='changeQType']/span[1]
    # select dropdown preference
    click element  xpath=.//*[@id='create']/ul/li[2]/a[1]
    user waits for the page to load
    wait until page contains  TheNewSurvey1
    # add dropdown ques
    input text  id=editTitle  What is your gender?  # Question 2 text
    wait until page contains  What is your gender?
    user waits for the page to load
    click element  xpath=.//table[@id='rows']/tbody/tr[3]/td[2]/div/div[1]
    user waits for the page to load
    # add options for dropdown
    input text  xpath=.//table[@id='rows']/tbody/tr[3]/td[2]/div/div[1]  Male  # 1st option
    user waits for the page to load
    input text  xpath=.//table[@id='rows']/tbody/tr[4]/td[2]/div/div[1]  Female  # 2nd option
    user waits for the page to load
    # save the 2nd ques
    Click Element  css=a[class='btn teal save']
    user waits for the page to load
    mouse up  xpath=//a[@id="userAcctTab_MainMenu"]
