*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]

empty_username
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required

empty_password
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required

empty_both
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username is required

Optikart Login
    Open Browser    https://optikart.hu/    firefox
        //*[@id="post-95"]/div/div/div/div/div[4]/div/div/a/span/span
    Click Button
