import sqlite3

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных создана и успешно подключена к SQLite")

    sqlite_select_query = "select sqlite_version();"
    cursor.execute(sqlite_select_query)
    record = cursor.fetchall()
    print("Версия базы данных SQLite: ", record)
    cursor.close()

except sqlite3.Error as error:
    print("Ошибка при подключении к sqlite", error)
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    sqlite_create_table_query = """CREATE TABLE users (
                                id INTEGER PRIMARY KEY,
                                username TEXT NOT NULL,
                                password text NOT NULL,
                                wallet_id INTEGER NOT NULL,
                                history TEXT DEFAULT "");"""

    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")
    cursor.execute(sqlite_create_table_query)
    sqlite_connection.commit()
    print("Таблица SQLite создана")

    cursor.close()

except sqlite3.Error as error:
    print("Ошибка при подключении к sqlite", error)
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    sqlite_create_table_query = """CREATE TABLE BUY_KEY (
                                id INTEGER PRIMARY KEY,
                                key TEXT NOT NULL);"""

    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")
    cursor.execute(sqlite_create_table_query)
    sqlite_connection.commit()
    print("Таблица SQLite создана")

    cursor.close()

except sqlite3.Error as error:
    print("Ошибка при подключении к sqlite", error)
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    sqlite_create_table_query = """CREATE TABLE wallets (
                                id INTEGER PRIMARY KEY,
                                amount INTEGER NOT NULL);"""

    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")
    cursor.execute(sqlite_create_table_query)
    sqlite_connection.commit()
    print("Таблица SQLite создана")

    cursor.close()

except sqlite3.Error as error:
    print("Ошибка при подключении к sqlite", error)
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")

    sqlite_insert_query = """INSERT INTO wallets
                          (id, amount)  VALUES  (46784012983, 100)"""

    count = cursor.execute(sqlite_insert_query)
    sqlite_connection.commit()
    print("Запись успешно вставлена ​​в таблицу sqlitedb_developers ", cursor.rowcount)
    cursor.close()
except sqlite3.Error as error:
    print("Не удалось вставить данные в таблицу sqlite")
    print("Класс исключения: ", error.__class__)
    print("Исключение", error.args)
    print("Печать подробноcтей исключения SQLite: ")
    exc_type, exc_value, exc_tb = sys.exc_info()
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")

    sqlite_insert_query = """INSERT INTO BUY_KEY
                          (id, key)  VALUES  (0, "7fb9cc76573a0766cba166912973b0aa")"""

    count = cursor.execute(sqlite_insert_query)
    sqlite_connection.commit()
    print("Запись успешно вставлена ​​в таблицу sqlitedb_developers ", cursor.rowcount)
    cursor.close()
except sqlite3.Error as error:
    print("Не удалось вставить данные в таблицу sqlite")
    print("Класс исключения: ", error.__class__)
    print("Исключение", error.args)
    print("Печать подробноcтей исключения SQLite: ")
    exc_type, exc_value, exc_tb = sys.exc_info()
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")

    sqlite_insert_query = """INSERT INTO wallets
                          (id, amount)  VALUES  (0, 1000000000)"""

    count = cursor.execute(sqlite_insert_query)
    sqlite_connection.commit()
    print("Запись успешно вставлена ​​в таблицу sqlitedb_developers ", cursor.rowcount)
    cursor.close()
except sqlite3.Error as error:
    print("Не удалось вставить данные в таблицу sqlite")
    print("Класс исключения: ", error.__class__)
    print("Исключение", error.args)
    print("Печать подробноcтей исключения SQLite: ")
    exc_type, exc_value, exc_tb = sys.exc_info()
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")

    sqlite_insert_query = """INSERT INTO users
                          (username, password, wallet_id)  VALUES  ('admin', '95eec0df5f3a9bed4bbc6ef416101def', 0)"""

    count = cursor.execute(sqlite_insert_query)
    sqlite_connection.commit()
    print("Запись успешно вставлена ​​в таблицу sqlitedb_developers ", cursor.rowcount)
    cursor.close()
except sqlite3.Error as error:
    print("Не удалось вставить данные в таблицу sqlite")
    print("Класс исключения: ", error.__class__)
    print("Исключение", error.args)
    print("Печать подробноcтей исключения SQLite: ")
    exc_type, exc_value, exc_tb = sys.exc_info()
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")

try:
    sqlite_connection = sqlite3.connect("CoffeeShop.db")
    cursor = sqlite_connection.cursor()
    print("База данных подключена к SQLite")

    sqlite_insert_query = """INSERT INTO users
                          (username, password, history, wallet_id)  VALUES  ('test', '098f6bcd4621d373cade4e832627b4f6', 'Эспрессо\nФлэт уайт\nФлэт уайт\nФлэт уайт\n', 46784012983)"""

    count = cursor.execute(sqlite_insert_query)
    sqlite_connection.commit()
    print("Запись успешно вставлена ​​в таблицу sqlitedb_developers ", cursor.rowcount)
    cursor.close()
except sqlite3.Error as error:
    print("Не удалось вставить данные в таблицу sqlite")
    print("Класс исключения: ", error.__class__)
    print("Исключение", error.args)
    print("Печать подробноcтей исключения SQLite: ")
    exc_type, exc_value, exc_tb = sys.exc_info()
finally:
    if sqlite_connection:
        sqlite_connection.close()
        print("Соединение с SQLite закрыто")
