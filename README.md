# Домашнее задание к занятию «Управляющие конструкции в коде Terraform»

# Задание 1
![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-24%20122759.png)

# Введение в Terraform
# Задание 1

### 1.1
 
 ![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20151009.png)
 
### 1.2
Согласно файлу .gitignore, личную и секретную информацию (логины, пароли, ключи, токены и т.д.) допустимо сохранять в файле terraform.tfvars.Этот файл не указан в правилах игнорирования, в отличие от personal.auto.tfvars и *.tfstate.

### 1.3

В state-файле секретное содержимое ресурса random_password находится в ключе:

result = uIDN0DGeoN7atmjS

![3](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20151709.png)

### 1.4
В раскомментированном блоке были допущены две намеренные ошибки:

У ресурса docker_image отсутствовало имя ресурса (второй label).
Было: resource "docker_image" {
Нужно: resource "docker_image" "nginx" {
Имя ресурса контейнера начиналось с цифры ("1nginx"), что запрещено правилами Terraform.
Имя ресурса должно начинаться с буквы или подчёркивания.

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20152431.png)
![2](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20152439.png)

### 1.5

![5](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20153706.png)

### 1.6

Опасность ключа -auto-approve:
Он автоматически подтверждает все изменения без запроса подтверждения у пользователя. Можно случайно удалить или изменить важные ресурсы, не заметив опасных действий в плане.Зачем может пригодиться -auto-approve:
Его удобно использовать в CI/CD пайплайнах и автоматизированных скриптах, где нет возможности вручную вводить yes.

![6](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20155015.png)

### 1.7

![7](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-19%20155933.png)

### 1.8

Образ nginx:latest не был удалён, потому что в ресурсе docker_image указан параметр keep_locally = true. Согласно документации провайдера Docker: «If true, then the Docker image won't be deleted on destroy operation».

---
# Основы работы с Terraform

# Задание 1

## Скриншоты

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20144121.png)

![2](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20144103.png)

## Ответы на вопросы

preemptible = true 
позволяет создавать прерываемую виртуальную машину. Для учебных и тестовых стендов это удобно, потому что такие ВМ можно использовать для временных задач с меньшей стоимостью, при этом нужно учитывать возможность принудительной остановки ВМ.

Для core_fraction = 5:

core_fraction задаёт базовую гарантированную производительность CPU в процентах. Низкое значение подходит для учебных и тестовых задач с небольшой нагрузкой и позволяет снизить стоимость ресурсов.


# Задание 2

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20153555.png)


# Задание 3

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20155035.png)

![2](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20163706.png)


# Задание 4

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20160253.png)


# Задание 5

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20161422.png)


# Задание 6

![1](https://github.com/ryltsevavikyla-coder/terraform/blob/main/Screenshot%202026-08-17%20162229.png)
