*** Settings ***
Library          SeleniumLibrary
Resource        ../resources/POM_loginPage.resource
Resource         ../data/variablesinput.resource
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
    verify Sign up successfully

Register faield wehn email is existed
    [Tags]    Smoke
    Input first name        ${first_name} 
    Input last name         ${last_name}
    Input phone number      ${phone}
    Input email             ${email}
    Input password          ${pwd}
    Select account type     ${acc_type}
    verify Sign up failed