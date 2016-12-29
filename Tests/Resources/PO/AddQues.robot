*** Settings ***
Library  Selenium2Library
Resource  SigninAction.robot
Resource  ./locator.robot

*** Keywords ***
Add Question To Survey
    # Click on add new question button
    wait until page contains  TheNewSurvey1
    user waits for the page to load
    click element  ${add_new_ques}
    user waits for the page to load
    unselect checkbox  ${checkbox}
    user waits for the page to load
    #Add Single tex question

Add To Survey
    # select from dropdown for 1st ques
    wait until page contains  TheNewSurvey1
    user waits for the page to load
    click element  ${select_ques_from_menu}
    # Select single text box preference
    click element  ${single_textbox}
    user waits for the page to load
    # Add 1st ques
    Input Text  ${ques_edit_field}  Which is your favorite ice-cream  # Question 1 text
    # save the 1st ques
    Click Element  ${save}
    user waits for the page to load
    # click on add new ques button for 2nd ques
    click element  ${add_new_ques}
    user waits for the page to load
    wait until page contains  TheNewSurvey1
    user waits for the page to load
    #Add another ques
    # select from dropdown for 2nd ques
    click element  ${select_ques_from_menu}
    # select dropdown preference
    click element  ${dropdown}
    user waits for the page to load
    wait until page contains  TheNewSurvey1
    # add dropdown ques
    input text  ${ques_edit_field}  What is your gender?  # Question 2 text
    wait until page contains  What is your gender?
    user waits for the page to load
    click element  ${dropdown_first_option}
    user waits for the page to load
    # add options for dropdown
    input text  ${dropdown_first_option}  Male  # 1st option
    user waits for the page to load
    input text  ${dropdown_second_option}  Female  # 2nd option
    user waits for the page to load
    # save the 2nd ques
    Click Element  ${save}
    user waits for the page to load
    mouse up  ${mouse_scroll_up}
