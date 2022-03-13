# InstaPets
This is a complete web application that uses Ruby on Rails with its respective REST API that clients can connect to. It consists of a platform where clients can share photos of animals. The app has minor styling details because it is focused on the backend, but it does have Bootstrap implemented.

# The application
It is running within the Heroku cloud and can be visited via:

https://instapetsapp.herokuapp.com/

A client can view all public photos shared by the community on the 'Photo list' page. They can also create an user, and after email verification, upload, view, edit and delete their own photos. All photos created by an user (public and private) can be found in the 'My photos' page. All photos unless the private ones (if you are not the owner) can be viewed in detail by clicking on them. In the detail of each photo you can find the given title, the author of the photo, a description (if any) and editing and deletion options (only if you are the owner of the photo).
An anti bad words system is implemented so users cannot upload photos that contain the predefined bad words (These words can be easily selected in the config/initializers/badwords.rb file).

The site can be visited in spanish via:

https://instapetsapp.herokuapp.com/es

It is not yet %100 implemented, but has all the structure to develop it by changing the config/locales/es.yml file.

The application has a complete security system thanks to the controllers and views so that users who do not own a photo cannot delete or edit it, as well as see them if they are private. The main models, controllers, routes and validations are created thanks to the Devise gem.

# Active Admin
An administration panel is created with the Active Admin gem. The admin user can create, read, update and delete any photo or user in the database. The admin panel is accesible via:

https://instapetsapp.herokuapp.com/admin

# The REST API
The API is deployed in the Heroku cloud and has its own database incorporated with PostgreSQL, a new db is created from scratch with the seeds.rb file. The main routes are created with the Scaffold gem and have serializers and authenticators for their correct operation.

It can be accesed, for example, through:

https://instapetsapp.herokuapp.com/api/v1/photos

Any route that requires an api_key e.g., private photos and other user information, will display a message like {"error":"Photo not found"} and {"error":"You need to sign in or sign up before continuing."} respectively.

The API is also covered from external attacks thanks to the Rack-attack gem.

# Specifications:

* Ruby version: 3.0.3

* Rails version: 7.0.2.3

# Principal gems used:

* Active Admin
* Devise
* Active_model_serializers
* Scaffold
* Bootstrap
* Rack-attack

InstaPets Inc © All rights reserved - Created by @effeleiva 
