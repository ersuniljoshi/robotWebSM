*** Settings ***
Library  Selenium2Library
Library  Selenium2Library

*** Keywords ***
Add ques to survey
# Click on add new question button
    wait until page contains  TheNewSurvey1
    click element  xpath=.//*[@class='survey-page-body']/form/div[1]/div[2]/span/a[1]/span
    sleep  3
    unselect checkbox  xpath=//*[@id="suggestQ"]
    sleep  2

#Add Single tex question
Add to survey
# select from dropdown for 1st ques
    wait until page contains  TheNewSurvey1
    sleep  3
    click element  xpath=.//a[@id='changeQType']/span[1]

# Select single text box preference
    click element  xpath=.//*[@id='create']/ul/li[8]/a[1]
    Sleep  3s
# Add 1st ques
    Input Text  id=editTitle  Which is your favorite ice-cream  # Question 1 text
# save the 1st ques
    Click Element  css=a[class='btn teal save']
    Sleep  2s
# click on add new ques button for 2nd ques
    click element  xpath=.//*[@class='survey-page-body']/form/div[1]/div[2]/span/a[1]
    sleep  3
    wait until page contains  TheNewSurvey1
    sleep  3

#Add another ques
# select from dropdown for 2nd ques
    click element  xpath=.//a[@id='changeQType']/span[1]
# select dropdown preference
    click element  xpath=.//*[@id='create']/ul/li[2]/a[1]
    sleep  3
    wait until page contains  TheNewSurvey1
# add dropdown ques
    input text  id=editTitle  What is your gender?  # Question 2 text
    wait until page contains  What is your gender?
    sleep  2
    click element  xpath=.//table[@id='rows']/tbody/tr[3]/td[2]/div/div[1]
    sleep  3
# add options for dropdown
    input text  xpath=.//table[@id='rows']/tbody/tr[3]/td[2]/div/div[1]  Male  # 1st option
    sleep  2
    input text  xpath=.//table[@id='rows']/tbody/tr[4]/td[2]/div/div[1]  Female  # 2nd option
    sleep  3
# save the 2nd ques
    Click Element  css=a[class='btn teal save']
    sleep  2
