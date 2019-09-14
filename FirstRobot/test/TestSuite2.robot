*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside TestSuite Setup
Suite Teardown    Log    I am inside TestSuite Suite Teardown

Test Setup    Log    I am inside Test Setup
Test Teardown   Log    I am inside Test Teardown

Default Tags    sanity
 
    
*** Test Cases ***
FirstTest
    [Tags]    smoke
    Log    I am in FirstTest
    
SecondTest
    Log    I am in SecondTest
    Set Tags    regression1
    Remove Tags    regression1
    
ThirdTest
    Log    I am in ThirdTest
    
FourTest
    Log    This is my fourth test to git change and push

