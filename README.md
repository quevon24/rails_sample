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


