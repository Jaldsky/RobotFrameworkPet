*** Settings ***
Documentation    Functional approach to test wall.post API-method
Default Tags    PositiveTest, SmokeTesting, wall.postMethod
Resource  ../Resources/resources.robot
Resource  ../Resources/test_urls.robot

*** Variables ***
${wall_post}    /wall.post?
${wall_edit}    /wall.edit?
${wall_delete}    /wall.delete?



*** Keywords ***
Get post id
    ${wall_post_message_1_url_resp}=  GET  ${wall_post_message_url}
    ${wall_post_id}=    convert to integer  ${wall_post_message_1_url_resp.json()}[response][post_id]
    [Return]    ${wall_post_id}


*** Test Cases ***
Test wall.post create wall post
    ${wall_post_message_1_url_resp}=  GET  ${wall_post_message_url}
    log    Go to api-url: ${wall_post_message_url}
    log    Сhecking the correct response: ${wall_post_message_1_url_resp.json()}[response][post_id]


Test wall.post edit wall post
    ${wall_post_id}=    Get post id
    ${wall_edit_message_1_url}=  strip string    ${wall_edit_message_url}&post_id=${wall_post_id}
    ${wall_edit_message_1_url_resp}=  GET  ${wall_edit_message_1_url}
    log    Go to api-url: ${wall_edit_message_1_url}


Test wall.post delete wall post
    ${wall_delete_id_1}=    Get post id

    ${wall_delete_id_2}=    evaluate    ${wall_delete_id_1}-1
    ${wall_delete_id_3}=    evaluate    ${wall_delete_id_1}-2

    log  Delete post num: ${wall_delete_id_1}
    log  Delete post num: ${wall_delete_id_2}
    log  Delete post num: ${wall_delete_id_3}

    ${wall_delete_message_1_url}=  strip string    ${wall_delete_message_url}&post_id=${wall_delete_id_1}
    ${wall_delete_message_2_url}=  strip string    ${wall_delete_message_url}&post_id=${wall_delete_id_2}
    ${wall_delete_message_3_url}=  strip string    ${wall_delete_message_url}&post_id=${wall_delete_id_3}

    ${wall_delete_message_1_url_resp}=  GET  ${wall_delete_message_1_url}
    ${wall_delete_message_2_url_resp}=  GET  ${wall_delete_message_2_url}
    ${wall_delete_message_3_url_resp}=  GET  ${wall_delete_message_3_url}

    log    Go to api-url: ${wall_delete_message_1_url}
    log    Go to api-url: ${wall_delete_message_2_url}
    log    Go to api-url: ${wall_delete_message_3_url}
