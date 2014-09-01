*** Settings ***
Documentation     Tests related to invalid login.
Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Setup        Go To Login Page
Test Template     Login With Invalid Credentials Should Fail
Resource          resource.robot

*** Test Cases ***    USER NAME        PASSWORD
Invalid Username      invalid          ${VALID PASSWORD}
Invalid Password      ${VALID USER}    invalid
Both Invalid          invalid          whatever
Empty Username        ${EMPTY}         ${VALID PASSWORD}
Empty Password        ${VALID USER}    ${EMPTY}
Both Empty            ${EMPTY}         ${EMPTY}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Title Should Be    Error Page
