*** Settings ***
Library          SeleniumLibrary
Resource         ../resources/keywords.robot
Resource         ../data/variablesinput.robot
Variables        ../resources/pageobjectmodel/elements.py
Test Setup       Open browser to register
Test Teardown    Close All Browsers

*** Test Case ***
Register successfully
    [Tags]    Smoke
    Input first name        ${first_name} 
    Input last name         ${last_name}
    Input phone number      ${phone}
    Input email             ${email}
    Input password          ${pwd}
    Select account type     ${acc_type}
    Click sign up button
    Sign up successfully msg

Register faield wehn email is existed
    [Tags]    Smoke
    Input first name        ${first_name} 
    Input last name         ${last_name}
    Input phone number      ${phone}
    Input email             ${email}
    Input password          ${pwd}
    Select account type     ${acc_type}
    Click sign up button
    Sign up failed msg