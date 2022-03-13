# InstaPets

This is a complete web application using Ruby on Rails with its respective REST API with which clients can connect to it (it has minor details in styles because is focused in the backend).
It is running within the Heroku cloud and can be visited via:

https://instapetsapp.herokuapp.com/

Specifications:

* Ruby version: 3.0.3

* Rails version: 7.0.2.3

Principal gems used:

* Active Admin
* Devise
* Active_model_serializers
* Bootstrap
* Rack-attack

The application consists of a platform where client can share photos of animals. A client can view all public photos shared by the community on the 'Photo list' page. They can also create an user, and after email verification, upload, view, edit and delete their own photos in the community. All photos created by an user (public and private) can be found in the 'My photos' page. All photos unless the private ones (if you are not the owner) can be viewed in detail by clicking on them. In the detail of each photo you can find the given title, the author of the photo, a description (if any) and editing and deletion options (only if you are the owner of the photo). An anti bad words system is implemented so users cannot upload photos that contain the predefined bad words (These words can be easily selected in the badwords.rb file).

The site can be visited in spanish (it is not yet %100 implemented, but has all the structure to develop it by changing the file in InstaPets/config/locales/es.yml) via:

https://instapetsapp.herokuapp.com/es

The application has a complete security system thanks to the controllers and views so that users who do not own a photo cannot delete or edit it, as well as see them if they are private. The main routes are created thanks to the Devise gem.

An administration panel is created with the Active Admin gem. The admin user can create, read, update and delete any photo or user in the database. The admin panel is accesible via:

https://instapetsapp.herokuapp.com/admin

The API is deployed in the Heroku cloud and has its own database incorporated with PostgreSQL, a new db is created from scratch with the seeds.rb file.
It can be accesed through:

https://instapetsapp.herokuapp.com/api/v1/

The API is also covered from external attacks thanks to the Rack-attack gem.



# InstaPets
