# Docker контейнеры. Docker под капотом 

## ДЗ Запуск VM с установленным Docker Engine при помощи Docker Machine. Написание Dockerfile и сборка образа с тестовым приложением. Сохранение образа на DockerHub.

 - [X] Создать docker host
 - [x] Создать свой образ
 - [x] Работа в Docker Hub
### Сделано
 - 104.155.4.61:9292
 - записано по условиям задания в файл docker-1.log
 - https://cloud.docker.com/u/hellcrazyrabbit/repository/docker/hellcrazyrabbit/otus-reddit

## Задание с *
 - пакер собирает образ, провижинер устанавливает на него докер
 - терраформ поднимает инфраструктуру
 - в ансибле прописаны плейбуки настройки приложения и установки докера 

# Docker образы. Микросервисы

## Разбиение приложения на несколько микросервисов. Выбор базового образа. Подключение volume к контейнеру.

 - [x] Собрать приложение используя образы сервисов
 - [x] Оптимизировать образы сервисов.
 - [x] Собрать приложение с использованием volume

### Комментарии
 - Для упрощенного развертывания использовать скрипт ../docker-monolith/docker-reddit.sh 

## Задания со *

 - [x] Запустить приложение изменив сетевые алиасы сервисов
`````
скрипт для передачи переменных env ../docker-monolith/docker-run.sh
`````

 - [x] Оптимизировать образы сервисов, используя alpine linux 
`````
Изменения можно посмотреть в различных версиях Dockerfile* в директориях сервисов
Для оптимизации использовался инструмент https://www.fromlatest.io/#/
`````

# Сетевое взаимодействие Docker контейнеров. Docker Compose. Тестирование образов 

- [x] Практика работы с сетями докер
- [x] Использование docker compose

## Docker-Compose
 - [x] Изменить docker-compose для работы с множеством сетей
 - [x] Параметизировать переменными

## Описание
 Домашняя работа выполнена по описанию из задания, протестированы разные сетевые мосты docker.
 
 Базовое имя проекта образуется дефолтной схемой <project>_<service>_<index> задать его можно самостоятельно флагом --project-name
или переменной COMPOSE_PROJECT_NAME. Это работает только для единичных контейнеров, при использовании stack деплоя выйдет ошибка, т.к.
каждый контейнер должен имень уникальное имя. Начиная с версии 1.23.0 схема имени стала длиньше <project>_<service>_<index>_<slug> 

# Создание и запуск системы мониторинга Prometheus.
 - [x] Запуск и настройка Prometheus
 - [x] Мониторинг состояния микросервисов
 - [x] Сбор метрик хоста с использованием экспортера

## Описание
 - Репозиторий приведен к требуемому состоянию
 - Образы загружены на docker hub
https://cloud.docker.com/u/hellcrazyrabbit/repository/list
 - Самостоятельно проверены различные датчики prometheus
