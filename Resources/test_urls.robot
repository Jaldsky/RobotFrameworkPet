*** Settings ***
Resource  ../Resources/resources.robot

*** Variables ***
### Test data for users.get_api
${user_ids_1_url}=    ${auth_url}${users_get}${auth_token}&${api_v}&user_ids=${test_data_vkid_1}
${user_ids_2_url}=    ${auth_url}${users_get}${auth_token}&${api_v}&user_ids=${test_data_vkid_1},${test_data_vkid_2}

${fields_1_url}=    ${auth_url}${users_get}${auth_token}&${api_v}&fields=photo_id
${fields_2_url}=    ${auth_url}${users_get}${auth_token}&${api_v}&fields=photo_id,verified,sex,bdate,city,country,home_town,has_photo,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,online,domain,has_mobile,contacts,site,education,universities,schools,status,last_seen,followers_count,common_count,occupation,nickname,relatives,relation,personal,connections,exports,activities,interests,music,movies,tv,books,games,about,quotes,can_post,can_see_all_posts,can_see_audio,can_write_private_message,can_send_friend_request,is_favorite,is_hidden_from_feed,timezone,screen_name,maiden_name,crop_photo,is_friend,friend_status,career,military,blacklisted,blacklisted_by_me,can_be_invited_group

${name_case_1_url}=    ${auth_url}${users_get}${auth_token}&${api_v}&user_ids=${test_data_vkid_2}&name_case=dat

### Test data for wall.post_api
${wall_post_message_url}=    ${auth_url}${wall_post}${auth_token}&${api_v}&message=Продам%20Гараж
${wall_edit_message_url}=    ${auth_url}${wall_edit}${auth_token}&${api_v}&message=Куплю%20Шкаф
${wall_delete_message_url}=    ${auth_url}${wall_delete}${auth_token}&${api_v}

###