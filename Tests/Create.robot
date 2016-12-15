*** Settings ***

Documentation  This is a basic info about the creation of survey test
Library  Selenium2Library

Resource  Resources/SM_Creation.robot
Resource  Resources/Common.robot

Test Setup  Begin Test Case
Test Teardown  End Test Case


*** Test Cases ***

SM_CreateSurvey
    [Documentation]  Second one
    [Tags]  Web

    Given User is logged in
    And User create survey
    And User adds the page title
    When User adds question
    Then User creates the survey