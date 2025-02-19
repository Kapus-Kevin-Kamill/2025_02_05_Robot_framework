*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://keprendeles.optikart.hu/login/    chrome
    Input Text    //*[@id="username-5474"]    kkkPG
    Input Text    //*[@id="user_password-5474"]    PGKamillJelszo
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="post-5477"]/div/div/div/div[2]/div[2]/a/img
    Close Browser

empty_user
    Open Browser    https://keprendeles.optikart.hu/login/    chrome
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Text    //*[@id="user_password-5474"]    PGKamillJelszo
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="um-error-for-username-5474"]
    Page Should Contain Element    //*[@id="um-error-for-user_password-5474"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser

empty_pass
    Open Browser    https://keprendeles.optikart.hu/login/    chrome
    Input Text    //*[@id="username-5474"]    kkkPG
    Input Text    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="um-error-for-user_password-5474"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

empty_both
    Open Browser    https://keprendeles.optikart.hu/login/    chrome
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Text    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="um-error-for-username-5474"]
    Page Should Contain Element    //*[@id="um-error-for-user_password-5474"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

wrong_user
    Open Browser    https://keprendeles.optikart.hu/login/    chrome
    Input Text    //*[@id="username-5474"]    aaaPG
    Input Text    //*[@id="user_password-5474"]    PGKamillJelszo
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain Element    //*[@id="um-error-for-user_password-5474"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
