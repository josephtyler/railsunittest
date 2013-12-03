railsunittest
=============

This is an example application utilizing rails built it unit testing.

This was built using Ruby 2.0.0, Rails 4.0.1, and Postgres 9.1.

The purpose of this application is to demonstrate a few different features of Rails and my ability to utilize them. This specific application simply stores, and creates menu items for the coffee shop that I'm currently working in.

* Unit testing
* Utilizing Rails models to query data
* Displaying data properly in a view, styled using SASS
* Ability to use the rails command line to create the app, models, controllers, etc
* Ability to use Postgresql 

Unit Testing
------------

Although there is currently no functionality for creating new menu items, the test database has been populated using fixtures. There are all sorts of unit tests used to ensure proper functioning of the models. These unit tests are beneficial because it allows us to programatically test every possible point of failure. Ideally unit tests will be created for ever single thing that could possibly break in the application.

Rails Models
------------

Rails active record class is incredibly powerful, and in this application there is only a simple demonstration of gathering all menu items in the menu controller and passing them to the view.

Views
-----

There is only one view in this rails application and it is used to display the menu - which is a collection of items. The view simply loops through the menu items to display each one, and it is styled using SASS - a css preprocessor.

Rails Command Line
------------------

The Rails command line is powerful and saves a great deal of time by automating commonly repeated tasks. For this application, I took full advantage of rails ability to create the app; generate models, views and controllers; conduct unit testing; and handle database migrations.

Postgresql
----------

I'm using Postgresql for this app since its what I already have installed on my machine and have been using for personal rails projects. Since Rails handles a lot of the databse interaction, I simply had to create a user and a databse and grant the appropriate privileges. 
