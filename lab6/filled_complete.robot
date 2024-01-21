*** Settings ***
Documentation     A test suite with a single test for fill complete
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Open Form
    Open Browser    ${Form URL}    ${BROWSER}  
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}      
    Form Page Should Be Open 
    [Teardown]    Close Browser

Record Success
    Open Browser To Form Page 
    Input First Name    Somri
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    081-001-1234
    Submit Button
    Complete Page Should Be Open
    [Teardown]    Close Browser