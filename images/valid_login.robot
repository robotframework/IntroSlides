*** Settings ***
Documentation     A test suite with one test for valid login.
...
...               The test contains a workflow created using
...               keywords in the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
