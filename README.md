# Инструкция по выполению первой самостоятельной работе

## SRS 1:  Diagrams-as-a-code
![contain] (./srs2/graphviz(2).svg)
![SVG Image] (srs2/graphviz(2).svg)

---
1. Перейдите на сайт:  
   [https://dreampuf.github.io/GraphvizOnline/](https://dreampuf.github.io/GraphvizOnline/)
2. Вставьте ваш код в редактор на сайте.

---

# Инструкция по выполению второй самостоятельной работе
## SRS 2. Миграции

---

## 1. Скачать python
На Windows скачать python с официального сайта: https://www.python.org/downloads/

На Linux
В командной строке выполните:

```bash
sudo apt install python3 python3-pip
```
## 2. Скачать yoyo-migration
В командной строке выполните:

```bash
pip install yoyo-migrations
```

---
## 3. Создайте папку проекта и внутри неё:

### Файл `yoyo.ini`

В этом файле укажите:

- пароль от вашей БД
- название БД
- localhost

### Папка `migrations`

Внутри неё разместите файлы миграций:

- `001.create_tables.sql`
- `001.create_tables.rollback.sql`
- `002.insert.into.tables.sql`
- `002.insert.into.tables.rollback.sql`

---

## 4. Создание базы данных

Создайте базу данных, в которую будут применены миграции (целевую БД).

---

## 5. Применение миграций

В командной строке (находясь в папке проекта) выполните:

```bash
yoyo apply
```
---
## 6. Откат миграций

В командной строке (находясь в папке проекта) выполните:

```bash
yoyo rollback
