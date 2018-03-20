# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* **Comandos**  
**- Generar modelo**  
rails g model Post title:string body:text  
**- Agregar campo a modelo existente**  
https://teamtreehouse.com/library/updating-the-model  
rails g migration AddCategory_idToPosts category_id:integer  
**- Hacer migraciones**  
rake db:migrate  
**- Crear controlador**  
rails g controller Posts  
**- Instalar gems**  
bundle install  
**- Ver rutas disponibles**  
rails routes  
**- Compilar assets**  
rake assets:precompile  
**- Cargar informacion por defecto en la base**  
Modificar el archivo db/migrate/seeds.rb y ejecutar  
rake db:seed  
**- Instalar rails admin**  
rails g rails_admin:install  
**- Instalar devise**  
rails g devise:install  
**- Controllers personalizados para devise**  
rails g devise:controllers users  
**- Views personalizados para devise**  
rails g devise:views   
**- Generar modelo de usuario devise**  
rails g devise user  
**- Cancan generar modelo**  
rails g cancan:ability  
**- Cancan crear roles de usuario**  
rails g migration add_roles_to_users superadmin_role:boolean editor_role:boolean user_role:boolean  
**- Agregar usuario a posts**  
rails g migration AddUserToPosts user:references  
**- Deshacer migracion especifica**  
rake db:migrate:down VERSION=20180320190125  
**- Deshacer n numero de migraciones**  
rake db:rollback STEP=2  
**- Migracion remover campos**  
rails g migration remove_columns_from_users superadmin_role:boolean editor_role:boolean user_role:boolean  


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* References
https://scotch.io/tutorials/build-a-blog-with-ruby-on-rails-part-1  
https://scotch.io/tutorials/build-a-blog-with-ruby-on-rails-part-2  
https://medium.freecodecamp.org/lets-create-an-intermediate-level-ruby-on-rails-application-d7c6e997c63f  
https://startbootstrap.com/template-overviews/clean-blog/  
https://medium.com/@bruno_boehm/full-blog-app-tutorial-on-rails-zero-to-deploy-4c19e8174791  
https://codepany.com/blog/rails-5-user-accounts-with-3-types-of-roles-devise-rails_admin-cancancan/  
https://github.com/plataformatec/devise/wiki/How-To:-Change-the-default-sign_in-and-sign_out-routes  
https://www.nopio.com/blog/authentication-authorization-rails/  



