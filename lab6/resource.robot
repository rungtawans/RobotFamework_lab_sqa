*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Firefox
${DELAY}          0.1
${Form URL}      http://${SERVER}/Form.html
${VALID EMAIL}    somsri@kkumail.com

*** Keywords ***
Open Browser To Form Page 
    Open Browser    ${Form URL}    ${BROWSER}  
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}      
    Form Page Should Be Open

Form Page Should Be Open 
    Title Should Be    Emergency Contact

Input First Name
    [Arguments]    ${firstname}
    Input Text    firstname    ${firstname}

Input Last Name
    [Arguments]    ${lastname}
    Input Text    lastname    ${lastname}

Input Contact Person
    [Arguments]    ${contactperson}
    Input Text    contactperson    ${contactperson}

Input Relationship
    [Arguments]    ${relationship}
    Input Text    relationship    ${relationship}

Input Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Input Phone
    [Arguments]    ${phone}
    Input Text    phone    ${phone}

Submit Button
    Click Button    submitButton

Complete Page Should Be Open 
    Title Should Be    Completed
    


    
