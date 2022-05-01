# Test-suite ***users.get_api.robot***
***Тест-сьют создан для демонстрации и не покрывает весь функционал!!!***
<br>

Тест-сьют содержит в себе пять позитивных тест-кейсов:
1. проверка поля **user_ids**  метода **users.get** с передачей **одного** аргумента
2. проверка поля **user_ids**  метода **users.get** с передачей **двух** аргументов
3. проверка поля **fields**  метода **users.get** с передачей **одного** аргумента
4. проверка поля **fields**  метода **users.get** с передачей **всех** возможных аргументов
5. проверка поля **name_case**  метода **users.get** с **одной** вариацией передаваемого аргумента

Результаты выполнения тест-сьюта логируются в и доступны для просмотра по адресу: 
> /Results/logs/users.get_api.robot

В папке ***users.get_api.robot*** содержется три файла:
+ log.html - краткий лог
+ output.xml - лог в формате XML
+ report.html - подробный отчет

## Ручная проверка тест-сьюта
### Проверка поля **user_ids**  метода **users.get** с передачей **одного** аргумента
1. Открыть браузер
2. Произвести GET-запрос, в адресную строку ввести: 
>  https://api.vk.com/method/users.get?access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f&v=5.81&user_ids=722653447

+ Ожидаемый результат: _появился json-файл, начинающийся с **response**_

---
### Проверка поля **user_ids**  метода **users.get** с передачей **двух** аргументов
1. Открыть браузер
2. Произвести GET-запрос, в адресную строку ввести: 
>  https://api.vk.com/method/users.get?access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f&v=5.81&user_ids=722653447,512316593

+ Ожидаемый результат: _появился json-файл, начинающийся с **response**, в **response** присутствует **два** поля **id**_

---
### Проверка поля **fields**  метода **users.get** с передачей **одного** аргумента
1. Открыть браузер
2. Произвести GET-запрос, в адресную строку ввести: 
>  https://api.vk.com/method/users.get?access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f&v=5.81&fields=photo_id

+ Ожидаемый результат: _появился json-файл, начинающийся с **response**_

---
### Проверка поля **fields**  метода **users.get** с передачей **всех** возможных аргументов
1. Открыть браузер
2. Произвести GET-запрос, в адресную строку ввести: 
>  https://api.vk.com/method/users.get?access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f&v=5.81&fields=photo_id,verified,sex,bdate,city,country,home_town,has_photo,photo_50,photo_100,photo_200_orig,photo_200,photo_400_orig,photo_max,photo_max_orig,online,domain,has_mobile,contacts,site,education,universities,schools,status,last_seen,followers_count,common_count,occupation,nickname,relatives,relation,personal,connections,exports,activities,interests,music,movies,tv,books,games,about,quotes,can_post,can_see_all_posts,can_see_audio,can_write_private_message,can_send_friend_request,is_favorite,is_hidden_from_feed,timezone,screen_name,maiden_name,crop_photo,is_friend,friend_status,career,military,blacklisted,blacklisted_by_me,can_be_invited_group

+ Ожидаемый результат: _появился json-файл, начинающийся с **response**, в **response** присутствует **множество** полей_

---
### Проверка поля **name_case**  метода **users.get** с **одной** вариацией передаваемого аргумента
1. Открыть браузер
2. Произвести GET-запрос, в адресную строку ввести: 
>  https://api.vk.com/method/users.get?access_token=880e44a594166a1f7a1d10884139f111a8c9f39dc8027e5605d5c7114a05bc5d7240e42a39b505cb8eb2f&v=5.81&user_ids=512316593&name_case=dat

+ Ожидаемый результат: _появился json-файл, начинающийся с **response**_

