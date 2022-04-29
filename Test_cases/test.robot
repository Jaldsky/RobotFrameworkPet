*** Settings ***
Library  Selenium2Library
Resource  ../Resources/resources.robot

*** Variables ***
${URL}    https://oauth.vk.com/blank.html#access_token=d56b5cfd654128332e8a46119ce89ff7ed03f0ddd806cbffd828ac1bf9c80ac3c8d9c7e0ca0a152ada279&expires_in=0&user_id=722497174
${Browser}    Chrome

*** Test Cases ***
аest TestCASE
    Open browser and maximize window    ${URL}    ${Browser}
    input text    id:user-name    standard_user
    input text    xpath:/html/body/div/div/div[2]/div[1]/div[1]/div/form/div[2]/input    secret_sauce
    click button    name:login-button
    sleep    2
    close browser


