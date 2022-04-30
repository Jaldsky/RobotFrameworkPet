*** Settings ***
Documentation    Testing users.get API-method with all arguments
Default Tags    PositiveTest, SmokeTesting, users.getMethod
Resource  ../Resources/resources.robot
Resource  ../Resources/test_data.robot
Resource  ../Resources/test_urls.robot

*** Variables ***
${users_get}    /users.get?



*** Test Cases ***
Test user_ids field with one argument
    ${user_ids_1_url_resp}=    GET  ${user_ids_1_url}
    log    Go to api-url: ${user_ids_1_url}
    log    Test data ${test_data_vkid_1} should be equal ${user_ids_1_url_resp.json()}[response][0][id]
    should be equal as integers    ${user_ids_1_url_resp.json()}[response][0][id]    ${test_data_vkid_1}

Test user_ids field with two arguments
    ${user_ids_2_url_resp}=    GET  ${user_ids_2_url}
    log    Go to api-url: ${user_ids_2_url}
    log    Test data ${test_data_vkid_1} should be equal ${user_ids_2_url_resp.json()}[response][0][id]
    should be equal as integers    ${user_ids_2_url_resp.json()}[response][0][id]    ${test_data_vkid_1}

    log    Test data ${test_data_vkid_2} should be equal ${user_ids_2_url_resp.json()}[response][1][id]
    should be equal as integers    ${user_ids_2_url_resp.json()}[response][1][id]    ${test_data_vkid_2}


Test fields field with one argument
    ${fields_1_url_resp}=    GET  ${fields_1_url}
    log    Go to api-url: ${fields_1_url}
    log    Test data ${test_data_fiels_1} should be equal ${fields_1_url_resp.json()}[response][0][photo_id]
    should be equal as strings    ${fields_1_url_resp.json()}[response][0][photo_id]    ${test_data_fiels_1}

Test fields field with one all arguments
    ${fields_2_url_resp}=    GET  ${fields_2_url}
    log    Go to api-url: ${fields_2_url}
    # в теории можно проверить каждый аргумент, проверим только первый, последний и какой-нибудь из середины
    log    Test data ${test_data_fiels_1} should be equal ${fields_2_url_resp.json()}[response][0][photo_id]
    should be equal as strings    ${fields_2_url_resp.json()}[response][0][photo_id]    ${test_data_fiels_1}

    log    Test data ${test_data_fiels_2} should be equal ${fields_2_url_resp.json()}[response][0][can_write_private_message]
    should be equal as integers    ${fields_2_url_resp.json()}[response][0][can_write_private_message]    ${test_data_fiels_2}

    log    Test data ${test_data_fiels_3} should be equal ${fields_2_url_resp.json()}[response][0][relatives]
    should be equal as strings    ${fields_2_url_resp.json()}[response][0][relatives]    ${test_data_fiels_3}


Test name_case field one variation
    ${name_case_1_url_resp}=    GET  ${name_case_1_url}
    log    Go to api-url: ${name_case_1_url}
    # проверим только как работает дательный падеж, можно создать тесты для каждого падежа
    log    Test data ${test_data_name_case_1} should be equal ${name_case_1_url_resp.json()}[response][0][last_name]
    should be equal as strings    ${name_case_1_url_resp.json()}[response][0][last_name]    ${test_data_name_case_1}
