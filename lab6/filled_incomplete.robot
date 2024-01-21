*** Settings ***
Documentation     A test suite with a single test for fill imcomplete 
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Test Setup        Open Browser To Form Page 
Resource          resource.robot

*** Test Cases ***            
Empty Contact Person          
    Input First Name    Somri
    Input Last Name    Sodsai
    Input Contact Person    ${EMPTY}
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    081-001-1234
    Submit Button
    Wait Until Page Contains    Please enter a contact person's name!!
    [Teardown]    Close Browser

Empty First Name
    Input First Name     ${EMPTY}
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    081-001-1234
    Submit Button
    Wait Until Page Contains    Please enter you're first name!!
    [Teardown]    Close Browser

Empty Last Name
    Input First Name     Somri
    Input Last Name    ${EMPTY}
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    081-001-1234
    Submit Button
    Wait Until Page Contains    Please enter a last name!!
    [Teardown]    Close Browser

Empty Email
    Input First Name     Somri
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${EMPTY}
    Input Phone    081-001-1234
    Submit Button
    Wait Until Page Contains    Please enter an email!!
    [Teardown]    Close Browser

Invalid Email
    Input First Name     Somri
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    abcd@
    Input Phone    081-001-1234
    Submit Button
    Wait Until Page Contains    Please enter a valid email!!
    [Teardown]    Close Browser

Empty Phone Number
    Input First Name     Somri
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    ${EMPTY}
    Submit Button
    Wait Until Page Contains    Please enter a phone number!!
    [Teardown]    Close Browser

Invalid Phone Number
    Input First Name     Somri
    Input Last Name    Sodsai
    Input Contact Person    Somjai Sodsai
    Input Relationship    Sister
    Input Email    ${VALID EMAIL}
    Input Phone    191
    Submit Button
    Wait Until Page Contains    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    [Teardown]    Close Browser