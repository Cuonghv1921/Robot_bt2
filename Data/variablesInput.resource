*** Settings ***
Library     SeleniumLibrary

*** Variable ***
#data test for login test
${url_login}        https://www.phptravels.net/login
${url_signup}       https://www.phptravels.net/signup
${browser}          chrome
${msg}              "Wrong credentials. try again!"
${wrong_email}      user@phptravels
${wrong_pwd}        demous
${right_email}      user@phptravels.com
${right_pwd}        demouser

#data test for sign up test
${first_name}       Cuong
${last_name}        Ha
${phone}            0123456789
${email}            txt..@gmail.com
${pwd}              123445
${acc_type}         Supplier
