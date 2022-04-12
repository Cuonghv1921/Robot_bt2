*** Settings ***
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Variables        ../resources/pageobjectmodel/elements.py
Test Setup       Open browser to login
Test Teardown    Close All Browsers

*** Test Case ***
Redirect to Sign up page when wrong account
    Input Email and Password    ${wrong_email}     ${right_pwd}
    Click login button
    Login failed msg
    IF    ${msg} == "Wrong credentials. try again!"
        Click sign up button to Redirect
    END
    verify redirect successfully

