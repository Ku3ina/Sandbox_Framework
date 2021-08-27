#language:ru
@sandbox
Функционал: Удаление тикета

  Сценарий: Удаление тикета

    * открыть url "https://ft-sandbox.workbench.lanit.ru/"
    * инициализация страницы "Sandbox"

    * кликнуть на элемент "Войти"

    * ввести в поле "Username" значение "admin"
    * ввести в поле "Password" значение "adminft"

    * кликнуть на элемент "Вход"
    * открыть url "https://ft-sandbox.workbench.lanit.ru/tickets"
    * проверить что текущий url содержит текст "https://ft-sandbox.workbench.lanit.ru/tickets"
    * на странице имеется элемент "Тикеты"
    * на странице имеется элемент "Overview"

    * проверить, что элемент "Тикеты" является ссылкой
    * проверить, что элемент "Overview" не является ссылкой

    * запомнить первый тикет
    * кликнуть на первый тикет
    * на странице имеется элемент "Тикеты"

    * проверить, что элемент "Тикеты" является ссылкой

    * кликнуть на элемент "Удалить"

    * инициализация страницы "Удалить тикет"

    * на странице имеется элемент "Тикеты"
    * на странице имеется элемент "Удалить тикет"
    
    * на странице присутствует текст "Are you sure you want to delete this ticket (Description of your issue)? All traces of the ticket, including followups, attachments, and updates will be irreversibly removed."
    * на странице имеется элемент "Нет, не удалять"
    * на странице имеется элемент "Да, Я Понимаю - Всё Равно Удалить"

    * кликнуть на элемент "Нет, не удалять"

    * инициализация страницы "Sandbox"

    * проверить, что элемент "Тикеты" является ссылкой

    * кликнуть на элемент "Удалить"

    * инициализация страницы "Удалить тикет"

    * на странице имеется элемент "Тикеты"
    * на странице имеется элемент "Удалить тикет"

    #todo * на странице присутствует текст "Are you sure you want to delete this ticket (Some django-helpdesk Problem)? All traces of the ticket, including followups, attachments, and updates will be irreversibly removed."
    * на странице имеется элемент "Нет, не удалять"
    * на странице имеется элемент "Да, Я Понимаю - Всё Равно Удалить"

    * кликнуть на элемент "Да, Я Понимаю - Всё Равно Удалить"
    * инициализация страницы "Sandbox"

    * подождать появления элемента "Таблица тикетов" в течение 5 секунд
    * проверить, что первый тикет удален
