# Домашнее задание к занятию «Основы Terraform. Yandex Cloud»

<details><summary>Задание 0</summary>


   Ознакомился с документацией к security-groups в Yandex Cloud.

</details>


<details><summary>Задание 1</summary>


   Ознакомился с документацией к security-groups в Yandex Cloud.

   1. Изучил файл variables.tf и переменные описанные в нем.
   2. Создал сервисный аккаунт **terraform** с ролью **editor**, создал авторизованный ключ и скачал файл **service_account_key_file.json**.
   3. Сгенерировал новый ssh-ключ и поместил его в качестве дефолтного для переменной **vms_ssh_root_key**.
   4. Инициализирал проект, выполнил код обнаружил синтаксическую ошибку: значение параметра **platform_id** было написано ошибочно через букву **"t"**; также версия платформы была недоступна в моей зоне. После исправления указанных ошибок, код выполнился и в облаке была создана ВМ с заданными параметрами
   5. Подключился к созданной ВМ по SSH используюя имя пользователя **ubuntu**, публичный ip-адрес и ранее сгенерированный ssh-ключ. Команда curl ifconfig.me вернула публичный ip-адрес ВМ.
   6. Использование парметров **preemptible = true** и **core_fraction=5** позволяет сэкномить бюджет во время обучения.

      
      Созданная ВМ в облаке
         ![](https://github.com/Granit16/terraform-hw-02/blob/main/screenshots/screen1_6_1.png)
      
      Вывод команды **curl** в консоле
         ![](https://github.com/Granit16/terraform-hw-02/blob/main/screenshots/screen1_6_2.png)

</details>
