*** Settings ***
Library  SeleniumLibrary
Library  ../../ExternalKeywords/Locators.py


*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    [Tags]  Smoke
    open browser  ${Url}  ${Browser}
    ${username}=  Read Element Locator  Registration.username_textbox_name
    ${email}=  Read Element Locator  Registration.email_textbox_name
    ${password}=  Read Element Locator  Registration.password_textbox_name
    input text  name:${username}  Testing
    input text  name:${email}  kadhimahmed.ahemd09@gmail.com
    input text  name:${password}  123456
    #input text  name:fld_username Testing
    #input text  name:fld_email  kadhimahmed.ahemd09@gmail.com
    #input text  name:fld_password  123456
Robot Next Test Case
    Select Radio Button  add_type  office


*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [Return]  ${result}

