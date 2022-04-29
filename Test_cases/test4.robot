*** Settings ***
Library    RequestsLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${a}=    ${URL}=Second${auth_token}Second
${b}=    Set Variable   Second

${c}=    Set Variable   ${a}${b}


*** Test Cases ***
test
    Log To Console    ${a}    # prints FirstSecond