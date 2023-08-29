*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${Url}  https://www.google.com/
${browser}  chrome

*** Test Cases ***
GoogleTest
    Open Browser    ${Url}      ${browser}
    Maximize Browser Window
    Sleep   2
    input text  xpath://textarea[@name='q']     robotframework
    click button    xpath:(//input[@name='btnK'])[2]
    Sleep   2
    ${AllLinksCount}=   get element count   xpath://h3
    log to console  ${AllLinksCount}
    @{LinkItems}    create list
    FOR   ${i}    IN RANGE    1   ${AllLinksCount}
    ${Links}=   get text    xpath:(//h3)[${i}]
#    Append To List  ${result}   ${Links}
    log to console  ${Links}
    Append To File  search_results.txt  ${Links}
    END
    sleep   2
    Close Browser


*** Keywords ***
