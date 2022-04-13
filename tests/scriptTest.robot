*** Settings ***
Library          SeleniumLibrary
Resource        ../resources/POM_loginPage.resource
Test Setup       Open browser to login
Test Teardown    Close All Browsers

*** Test Case ***
Redirect to Sign up page when wrong account
    Input Email and Password    ${wrong_email}     ${right_pwd}
    verify Login failed
    IF    ${msg} == "Wrong credentials. try again!"
        Click sign up button to Redirect
    END
    verify redirect successfully

