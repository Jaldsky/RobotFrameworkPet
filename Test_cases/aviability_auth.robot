*** Settings ***
Documentation     Positive test of vk.com accessibility and authorization by token
Default Tags    PositiveTest, SmokeTesting, Aviability, Authorization
Resource  ../Resources/resources.robot

*** Variables ***
${profile_url}    ${auth_url}/account.getInfo?${auth_token}&${api_v}



*** Test Cases ***
Aviability vk.com
    create Session    vk    https://vk.com
    log    Go to url: https://vk.com
    ${av_resp_vk}=    GET on session    vk   /    expected_status=200
    should be equal as strings    ${av_resp_vk.reason}  OK
    status should be                 200  ${av_resp_vk}


Authorization vk.com
# авторизация проходит успешно если нашлась запись с любой страной
    ${au_resp_vk}=    GET  ${profile_url}
    log    Go to url: ${profile_url}
    Should Match Regexp  ${au_resp_vk.json()}[response][country]    [A-z]