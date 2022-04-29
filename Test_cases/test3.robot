*** Settings ***
Library  RequestsLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${profile_url}    ${url}/account.getInfo?${auth_token}&fields=country&${api_v}
${Browser}    Chrome

*** Test Cases ***
open json
    set screenshot directory    ../Results/
    log to console  ${profile_url}
    Open browser and maximize window    ${profile_url}    ${Browser}
    element should contain    xpath:/html/body/pre    {"response":{"count":0,"items":[]}}
    sleep    2
    close browser
    capture element screenshot


Quick Get A JSON Body Test
    set screenshot directory    ../Results/
    ${response}=    GET  ${profile_url}
    Should Be Equal As Strings    0  ${response.json()}[response][count]
    capture element screenshot

