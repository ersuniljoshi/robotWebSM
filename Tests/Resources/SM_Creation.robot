*** Settings ***
Documentation  This is a basic info about the creation of surveys2
Library  Selenium2Library
Resource  ./PO/SigninAction.robot
Resource  ./PO/CreateSurveys1.robot
Resource  ./PO/AddThePageTitle.robot
Resource  ./PO/AddQues.robot

*** Keywords ***
User is logged in
    SigninAction.Navigate sign in
    SigninAction.Do SignIn1

User create survey
    CreateSurveys1.Create the survey

User adds the page title
    AddThePageTitle.Add the title

User adds question
    AddQues.Add ques to survey

User creates the survey
    AddQues.Add to survey



