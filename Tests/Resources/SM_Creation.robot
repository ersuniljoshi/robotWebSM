*** Settings ***
Documentation  This is a basic info about the creation of surveys2
Library  Selenium2Library
Resource  ./PO/SigninAction.robot
Resource  ./PO/CreateSurveys1.robot
Resource  ./PO/AddThePageTitle.robot
Resource  ./PO/AddQues.robot

*** Keywords ***
User is logged in
    SigninAction.Navigate Sign In
    SigninAction.Do SignIn1

User create survey
    CreateSurveys1.Create The Survey

User adds the page title
    AddThePageTitle.Add The Title

User adds question
    AddQues.Add Question To Survey

User creates the survey
    AddQues.Add To Survey
