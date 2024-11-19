# Copywriter

Site and pwa app for a small copywriting team. Built on Rails made it easy to create a system to add or remove clients, post reviews or add job listings for the admin.

Designed in Figma and adapted as a rebuild for a specific copywriting team found through Fiverr, LKM Creative. Consider this project a fan site and references go directly to LKM Creative or specific members of the team via the site/app. Inquires into the site build or design are clearly marked. This site/app is intended to showcase my skills as a designer and Rails developer and should not reflect on LKM Creative.

Admin can add, update, or remove a client that is listed on the client page. A client can have a image, a title, and a brief description.

Admin can add, update, or delete a review. A review can have an avatar, full name, country, start rating, and content.

Admin can add, update, or delete a job. A job has a title, description, minimum requirements.

Created an internal email service within the site for the team. Admin can manage team members for the internal mail of the site. 

When submitting the contact form, a internal mail is sent to the admin by default. In this case that is Shawn. The admin can choose to allow the information to also be sent to a selected team member.

The design was built many years ago and built in Wordpress with the Elementor plugin. That information has long been lost. I used LKM Creative content to rebuild this concept. Some changes have been made for creative purposes as I attempt to merge the two concepts.

To get the code or set the build up you should follow best git practices. Fork the repo then clone your fork. I include a git ignore line in all my Rails repos that ignores the vendor/bundle folder. You should run bundle after cloning to ensure all dependencies are ready.

I use PotgreSQL as the database. I include the host, default username and default password for PostgreSQL in the database.yml in config. In most cases this is probably not necessary but probably will not create a problem, also will not effect the production database setup or connection.

* Ruby version

  3.3.0

* System dependencies
  * Typical Rails
  * Devise

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Deployment instructions

* ...
