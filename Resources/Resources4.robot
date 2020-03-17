*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    Open Browser  http://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser

Before Each Test Suite
    log  Before Each Test Suite

After Each Test Suite
    log  After Each Test Suite

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    log  "Task Done Successfully"

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_value  ${username}  ${password}
    log  ${resultval}


#with argument and no return value
#*** Settings ***
#Library  SeleniumLibrary
#Library  ../ExternalKeywords/UserKeywords.py
#
#*** Variables ***
#
#
#*** Keywords ***
#Start Browser and Maximize
#    Open Browser  http://www.thetestingworld.com/testings  Chrome
#    Maximize Browser Window
#
#Close Browser Window
#    ${Title}=  Get Title
#    Log  ${Title}
#    Close Browser
#
#Before Each Test Suite
#    log  Before Each Test Suite
#
#After Each Test Suite
#    log  After Each Test Suite
#
#Create Folder at Runtime
#    [Arguments]  ${foldername}  ${subfoldername}
#    create_folder  ${foldername}
#    create_sub_folder  ${subfoldername}
#    log  "Task Done Successfully"

#without Aurgment
#*** Settings ***
#Library  SeleniumLibrary
#Library  ../ExternalKeywords/UserKeywords.py
#
#*** Variables ***
#
#
#*** Keywords ***
#Start Browser and Maximize
#    Open Browser  http://www.thetestingworld.com/testings  Chrome
#    Maximize Browser Window
#
#Close Browser Window
#    ${Title}=  Get Title
#    Log  ${Title}
#    Close Browser
#
#Before Each Test Suite
#    log  Before Each Test Suite
#
#After Each Test Suite
#    log  After Each Test Suite
#
#Create Folder at Runtime
#    create_folder
#    create_sub_folder
#    log  "Task Done Successfully"