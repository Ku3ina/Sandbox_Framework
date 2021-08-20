#language:ru
@sandbox
Функционал: Создание тикета

  Сценарий: Создание тикета

    * открыть url "https://ft-sandbox.workbench.lanit.ru/"
    * переход на страницу "Sandbox"
    * кликнуть на элемент "Новый Тикет"

    * проверить, что в выпадающем списке "Очередь" присутствуют поля:
      | Django Helpdesk |
      | Some Product    |
    * в выпадающем списке "Очередь" выбрать "Django Helpdesk"
    * проверить, что в выпадающем списке "Очередь" выбрано "Django Helpdesk"

    * ввести в поле "Краткое описание проблемы" значение "Description of your issue"
    * проверить, что поле "Краткое описание проблемы" заполнено значением "Description of your issue"

    * ввести в поле "Описание вашей проблемы" значение "Full description of your issue"
    * проверить, что поле "Описание вашей проблемы" заполнено значением "Full description of your issue"

    * проверить, что в выпадающем списке "Приоритет" присутствуют поля:
      | 1. Критичный    |
      | 2. Высокий      |
      | 3. Нормальный   |
      | 4. Низкий       |
      | 5. Очень низкий |
    * в выпадающем списке "Приоритет" выбрать "1. Критичный"
    * проверить, что в выпадающем списке "Приоритет" выбрано "1. Критичный"

    #todo выбор даты с помощью календаря
    * ввести в поле "Выполнить до" значение "2021-08-17 00:00:00"
    * проверить, что поле "Выполнить до" заполнено значением "2021-08-17 00:00:00"

    * проскролить страницу до элемента "Выберите файл"
    * с помощью элемента "Выберите файл" загрузить файл, расположенный по адресу "src/test/resources/log4j.properties"

    * ввести в поле "Ваш адрес электронной почты" значение "t@t.test"
    * проверить, что поле "Ваш адрес электронной почты" заполнено значением "t@t.test"

    * кликнуть на элемент по тексту "Отправить тикет"
    * проверить, что поле "Очередь:" содержит значение "Django Helpdesk"
    * проверить, что поле "Электронный адрес отправителя" содержит значение "t@t.test"
    * проверить, что поле "Поле Приоритет" содержит значение "1. Критичный"
    #todo проверка введенных значений
