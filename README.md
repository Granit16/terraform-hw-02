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

      
      ## Созданная ВМ в облаке
      
         ![](https://github.com/Granit16/terraform-hw-02/blob/main/screenshots/screen1_6_1.png)
      

      ## Вывод команды **curl** в консоле
      
         ![](https://github.com/Granit16/terraform-hw-02/blob/main/screenshots/screen1_6_2.png)

</details>

<details><summary>Задание 2</summary>

   Для ресурсов yandex_compute_image и yandex_compute_instance заменил хардкод-значения на переменные **vm_web_image_family**, **vm_web_vpc_name**, **vm_web_platform**, объявив их в файле variables.tf.
   Заполнил их default прежними значениями из main.tf.
   
Команада **terraform plan** выдала результат **No changes**.

</details>

<details><summary>Задание 3</summary>

  Создал в корне проекта файл 'vms_platform.tf' . Перенес в него переменные первой ВМ: **vm_web_instance_name** и **vm_web_planform**.

В файле main.tf создал вторую ВМ с именем "netology-develop-platform-db" , cores  = 2, memory = 2, core_fraction = 20, по аналогии с существующей.
Её переменные объявил в том же файле **vms_platform.tf**, но уже с префиксом vm_db_. Зону указал **ru-central1-b**

Применил изменения.
</details>

<details><summary>Задание 4</summary>

В файле **outputs.tf** создал output, содержащий: **instance_name**, **external_ip**, **fqdn** для каждой из ВМ.

Применил изменения.

 ![](https://github.com/Granit16/terraform-hw-02/blob/main/screenshots/screen4.png)
</details>

<details><summary>Задание 5</summary>
Описал в файле locals.tf в local-блоке имя каждой ВМ, использовал интерполяцию ```name = "netology-${ var.env[i]}-platform-${ var.project[j] }"```.
Замените переменные внутри ресурса ВМ на созданные вами local-переменные.
Примените изменения.
</details>


