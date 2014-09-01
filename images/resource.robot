*** Settings ***
Documentation     A resource file with reusable keywords and variables.
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${HOST}           localhost:7272
${LOGIN URL}      http://${HOST}/

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login Page

Input Username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}
