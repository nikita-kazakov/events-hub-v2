# Events Go App 2.0
Events Go is an events registration app built with Ruby on Rails 6. It allows users to see which tech events are available and add their own tech events to the database. Users can see who's going to events and can sign up themselves.  

This app features authentication without using Devise.  
This app is meant to show Rails CRUD flexibility without using scaffolding.

# Deloyed Application

https://events-go-v1.herokuapp.com  
(Deployed to Heroku, please wait 10 seconds to load).


Video of Events App  (60 seconds):  
(Insert YouTube Video)

# Getting Started

Clone Flix App Repository

`git clone https://github.com/nikita-kazakov/events-go-rails-v1`

Change terminal directory to _flix-rails-app_  
`cd events-go-rails-v1`

Bundle install required Ruby gems but without production gems.  
`bundle install --without production`

Run Rails migration to create database tables from schema.  
`rails db:migrate`

Run seeds.db to populate database with sample movies and reviews.  
`rails db:seed`

Run rails server  
`rails server`

Open the internet browser and navigate to URL below.  
`http://localhost:3000`

You’ll see the index page.
