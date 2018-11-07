# language: ru

Функционал: Сборка внешних файлов из исходников
    Как Пользователь
    Я хочу иметь возможность собирать внешние файлы из исходников
    Чтобы я мог не делать этого вручную

Контекст:
    Допустим я создаю временный каталог и сохраняю его в контекст
    И я сохраняю каталог проекта в контекст
    И я устанавливаю временный каталог как рабочий каталог
    И я установил рабочий каталог как текущий каталог

Сценарий: Сборка файла из заданной папки без указания информационной базы
    Когда я создаю каталог "bin" в рабочем каталоге
    И я выполняю команду "oscript" с параметрами "<КаталогПроекта>\v8files-extractor.os --compile <КаталогПроекта>\src\tests\UseDesigner\fixture <РабочийКаталог>\bin --use-designer"
    Тогда в подкаталоге "bin" рабочего каталога существует файл "Fixture.epf"

Сценарий: Сборка файла из заданной папки с указанием информационной базы
    Когда я создаю каталог "bin" в рабочем каталоге
    И я выполняю команду "vanessa-runner" с параметрами "init-dev"
    И я выполняю команду "oscript" с параметрами "<КаталогПроекта>\v8files-extractor.os --compile <КаталогПроекта>\src\tests\UseDesigner\fixture <РабочийКаталог>\bin --use-designer --ib-connection-string /F<РабочийКаталог>\build\ib"
    Тогда в подкаталоге "bin" рабочего каталога существует файл "Fixture.epf"