*** Settings ***
Library      SeleniumLibrary
Resource     ../data/variablesinput.resource

*** Variables ***      
# Element of login page
${txt_loginEmail}       name:email
${txt_loginPassword}    name:password
${btn_signInButton}     xpath://body/div[1]/div[1]/div[2]/div[2]/div[1]/form[1]/div[3]/button[1]
${login_msg_succ}       Hi, Demo Welcome Back
${login_msg_fail}       Wrong credentials. try again!

# Elments of register page
${txt_firstName}        name:first_name
${txt_lastName}         name:last_name
${txt_phone}            name:phone
${txt_email}            name:email
${txt_password}         name:password
${sel_type}             id:account_type
${btn_signUpButton}     xpath://body/div[1]/div[1]/div[2]/div[2]/div[1]/form[1]/div[7]/button[1]
${btn_register_Button}     xpath://body/div[1]/div[1]/div[2]/div[2]/div[1]/form[1]/div[3]/div[1]/div[1]/a[1]
${signup_msg_succ}       Signup successfull please login.
${signup_msg_fail}       Email already exist!
${verify_signup_page}    Please enter all credentials to signup

*** Keywords ***
# Login keywords
Open browser to login
    Open Browser    ${url_login}    ${browser}
    Maximize Browser Window

Input Email and Password   
    [Arguments]    ${email}                ${password}
    Input Text     ${txt_loginEmail}       ${email}
    input Text     ${txt_loginPassword}    ${password}
    
verify Login successfully
    Click Element    ${btn_signInButton}
    Wait Until Page Contains    ${login_msg_succ}

verify Login failed
    Click Element    ${btn_signInButton}
    Wait Until Page Contains    ${login_msg_fail}

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

verify Sign up successfully
    Click Element    ${btn_signUpButton}
    Wait Until Page Contains    ${signup_msg_succ} 

verify Sign up failed
    Click Element    ${btn_signUpButton}
    Wait Until Page Contains    ${signup_msg_fail}

# Script test
Click sign up button to Redirect
    Click Element    ${btn_register_Button} 
verify redirect successfully
    Wait Until Page Contains    ${verify_signup_page} 
