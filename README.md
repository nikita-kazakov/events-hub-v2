
<!-- ABOUT THE PROJECT -->
## Live Demo
[Demo deployed on a VPS](http://events-app.deploybox.top/) using Dokku


## About The Project
Events Hub is a 2.0 version of the original [Events 1.0 app](https://github.com/nikita-kazakov/events-go-rails-v1). It's a meetup or eventbrite clone. It allows you to find events, sign up for them and rate them. This version includes authentication and is developed in Ruby on Rails.

Video of Events App  (60 seconds):  
(Insert YouTube Video)

### Built With
| **HTML** | **CSS** | **Ruby** | **Rails 5** | **Bootstrap 4** | **Sass** | **Authentication** | 

<!-- GETTING STARTED -->
## Getting Started

Clone Events Hub App Repository
`git clone https://github.com/nikita-kazakov/events_hub`

Change terminal directory to *events_hub* 
`cd events_hub`

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
