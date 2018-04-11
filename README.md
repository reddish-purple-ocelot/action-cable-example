# README

:star:

[//]: # (This README would normally document whatever steps are necessary to get the application up and running.)

[//]: # ( Things you may want to cover:)

* Ruby version

  **ruby-2.3.1**

* System dependencies

  **postgresql**

  **redis**

  **yarn**


[comment]: <Configuration>


* Database creation
  ```sh
    $ rails db:create
    $ rails db:migrate
    $ rails db:seed
  ```

* Database initialization
  ```yml
    # config/secrets.yml
    development:
      database:
        username: #{postgresql_username}
        password: #{postgresql_password}
      admin:
        username: #{admin_username}
        password: #{admin_password}
  ```

[//]: # (How to run the test suite)


[//]: # (* Services (job queues, cache servers, search engines, etc.)

[//]: # (Deployment instructions)
