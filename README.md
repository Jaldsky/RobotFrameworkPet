# Запуск проекта
1. Запустить через командную строку виртуальную среду
> (путь...)\RobotFramework\venv\Scripts\activate.bat
2. В запущенной виртуальной среде перейти в каталог **VK-API_Test**
> cd (путь...)\VK-API_Test
3. Запустить исполняемый файл **Main.py**
> py Main.py

_Примечание: в системе должен быть установлен **python 3.x.x**_

# Дальнейшие планы по автоматизации тестирования портала vk.com
В первую очередь для охвата тестирования базового функционала портала следует **дописать автотесты оставшихся API-методов**, также следует **расширить уже написаные автотесты** (охватить большую часть полей API-методов и их аргументов). 
<br>

Помимо тестирования API, также необходимо протестировать **переходы состояния (State-Transition Testing)** и провести тестирование **сценариев использования (Use Case Testing)** GUI составляющей, с помощью web-driver и robotframework-seleniumlibrary.
<br>

**Провести нагрузочное тестирование**, дополнив проект скриптами с использованием многопоточности (threading или multiprocessing) и/или использовать уже готовые решения, например, такие как JMeter, BlazeMeter или Яндекс.Танк. 