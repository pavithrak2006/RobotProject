*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside TestSuite Setup
Suite Teardown    Log    I am inside TestSuite Suite Teardown

Test Setup    Log    I am inside Test Setup
Test Teardown   Log    I am inside Test Teardown

Default Tags    sanity
 
*** Variables ***
${search}    Lambodgini Disjit dosanjh
${LoginTestURL}    http://google.com

@{Credentials}   pavimfy1@gmail.com    leela456$
&{LoginData}    username=pavimfy1@gmail.com    password=leela456$



*** Keywords ***
LoginKW
    Input Text    xpath=//*[@id="identifierId"]    @{Credentials}[0]
    Click Element    xpath=//*[@id="identifierNext"]/span    
    Input Password    name=password    &{LoginData}[password]
    

*** Test Cases ***
HelloWorldTest
    Log    HelloWorld Pavi

LoginTest
    Open Browser    ${LoginTestURL}    chrome
    Set Browser Implicit Wait    5
    Input Text    name=q        Lambodgini Disjit dosanjh
    Press Keys    name=q    ENTER
    # Click Button    name=btnK    
    Sleep    2    
    Close Browser
    Log    Search in google-Lambodgini Disjit dosanjh
    Log    This test is executed by %{username} on %{os}

SampleGmailLoginTest
    [Documentation]    This a sample login test
    Open Browser    http://google.com    chrome
    Set Browser Implicit Wait    5
    Click Link    xpath: //*[@id="gb_70"]
    Set Browser Implicit Wait    5  
    LoginKW
    Sleep    2  
    Click Element    xpath=//*[@id="passwordNext"]
    
    #click gmail link again
    Click Link    xpath: //*[@id="gbw"]/div/div/div[1]/div[1]/a
    
    #click on p image
    Click Element    //*[@id="gb"]/div[2]/div[3]/div/div[2]/div/a
    #signout
    Set Browser Implicit Wait    5
    Click Element    css:#gb > div.gb_Ud.gb_be.gb_3d > div.gb_Wa.gb_E.gb_Jc > div.gb_ag.gb_sb > div:nth-child(2)
    Close Browser