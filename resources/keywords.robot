*** Settings ***
Library     SeleniumLibrary
Variables    ../pageobjectmodel/elements.py

*** Variable ***
${url_login}        https://www.phptravels.net/login
${url_signup}       https://www.phptravels.net/signup
${browser}          chrome
${msg}              "Wrong credentials. try again!"

*** Keywords ***
# Login keywords
Open browser to login
    Open Browser    ${url_login}    ${browser}
    Maximize Browser Window

Input Email and Password   
    [Arguments]    ${email}                ${password}
    Input Text     ${txt_loginEmail}       ${email}
    input Text     ${txt_loginPassword}    ${password}

Click login button
    Click Element    ${btn_signInButton}
    
Login successfully msg
    Wait Until Page Contains    Hi, Demo Welcome Back

Login failed msg
    Wait Until Page Contains    Wrong credentials. try again!

# Register keywords
Open browser to register
    Open Browser    ${url_signup}    ${browser}
    Maximize Browser Window

Input first name
    [Arguments]    ${firstName}
    Input Text    ${txt_firstName}    ${firstName}

Input last name
    [Arguments]    ${lastName}
    Input Text    ${txt_lastName}    ${lastName}

Input phone number
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Input email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}

Input password
    [Arguments]    ${pwd}
    Input Text    ${txt_password}    ${pwd}

Select account type
    [Arguments]    ${accType}
    Select From List By Label    ${sel_type}    ${accType}

Click sign up button
    Click Element    ${btn_signupButton}

Sign up successfully msg
    Wait Until Page Contains    Signup successfull please login.

Sign up failed msg
    Wait Until Page Contains    Email already exist!

# Script test
Click sign up button to Redirect
    Click Element    xpath=//*[@id="fadein"]/div[1]/div/div[2]/div[2]/div/form/div[3]/div/div/a
verify redirect successfully
    Wait Until Page Contains    Please enter all credentials to signup