# SIMO_SULTAN'S DRIVING LESSONS MARKETPLACE

The app: [DLM](https://driving-lesson-marketplace.herokuapp.com/)
Source code: [https://github.com/SimoSultan/dlm](https://github.com/SimoSultan/dlm)


#### Index:
- [**Statement of Purpose**](#Statement-of-Purpose)
- [**Description**](#Description)
- [**Motivation**](#Motivation-and-Inspiration)
- [**Target Audience**](#Target-Audience)
- [**Features**](#Features)
- [**Tech Stack**](#Tech-Stack)
- [**Implementation Plan**](#Implementation-Plan)
- [**Development Log**](#Development-Log)
- [**Testing**](#Testing)
- [**Resources**](#Resources)
- [**Copyright**](#Copyright)




---

## Statement of Purpose

The goal was to develop a terminal application that resembles someone learning to code. A re-imagining of the experiences that programmers will face in a learning environment to some small degree. The game must provide challenges, fun, laughs, but most importantly, reiterate the values of Growth Mindset. The game is inspired from, more-or-less, every episode of the TV show Scrubs. This show provided challenges to the main character and laughs along the way, but majority of episodes, there was always something the main character learnt, a life lesson for example, which is what I hoped to encapsulate.

Finishing the game is when you have enough EXP to be able to look for a job, or depending on what you did through your journey, you may receive a job offer.

The problem I hoped to solve with my choice of a text adventure game, apart from the main concept of enjoyment, was to use the life lesson of having the user see the value of helping others. Because, not only do they get experience if they choose to, but they get to help another person along the way. I believe I managed to scratch the surface of this goal in the time frame provided. 

The audience for the game is mainly tailored towards a programmer. As the type of questions that are presented to the user throughout the game are coding based, so for a non-programmer, these would be quite difficult, still possible, but a lot more time consuming. This game is also specifically tailored towards a programmer who is in the learning stages. We are all always learning, but a new programmer is someone who faces these types of challenges every day, and these users will receive the most enjoyment for the game.

I had never developed a game myself which is why I chose to undertake my first one as a text adventure, which seemed appropriate for a terminal app as well. Putting enjoyment at the front of design (apart from UI) was a challenge I enjoyed. Also combining all the topics I had learnt so far into one coherent design, one helluva fun time.

---

## Motivation and Inspiration

In the past one of my professions was a driver trainer. I worked as a contractor with a company, but as contractor's are able to work for any company, which means that if that instructor had available time, they could also put that up on this site and be able to conduct individual lessons outside of their current company.

A platform like this could actually exist in today's society and I intend to develop this idea further. I originally had built a page driving lesson booking system for my company with JavaScript and Firebase. So my inspiration for design came from this app. I cannot post a link to that app due to the database not being properly secured yet, which only contains fake data in development. 


---


## Target Audience

The target audience for this app is for driving instructors and people looking to learn to drive.

---


## Features	

### Current features:  

- students can sign up, view and edit the profile
- once completing their profile, a student can book a lesson
- students can see all of their upcoming and past lessons
- students can see their next and most recent lesson
- students can delete all their information and related lessons from the app

- instructors can sign up, view and edit the profile
- instructors can book a lesson for a student
- instructors can see and cancel any lesson
- instructors can delete all their information and related lessons from the app

- admin roles, which cannot be signed up for, but created by another admin, can see and edit their profile
- admins can create other admins
- admins can book a lesson for any student and any instructor
- admins can remove any person from the application
- admins can delete all their information from the app

### Future features:

- instructors will have their own calendar which is used to see if an instructor is free when a student books their lesson
- students can pay for their lessons via stripe
- students and instructors will be able to make comments about a lesson on the respective lesson
- more features for admin to edit and create new lesson lengths and costs
- when a person signs up they will need to confirm their email address
- instructors will be able to see a tally of their total lessons and total moneys earnt over lifetime and week by week
- instructors will be verified by a correct driver trainer license number
- students will be able to book a driving test to use the instructor's car
- students will be able to filter their lessons
- utilise cookies so that people don't have to keep logging in from their same computer


---


## Tech Stack

- Ruby
- Rails 6+
- HTML
- CSS
- SASS
- JavaScript and 
- PostgreSQL
- Git
- Bootstrap 4
- Heroku

Ruby on Rails was the foundation of this application which uses all of the above languages. There was additional JS written to implement the Google Maps Places API address autocomplete select box. Bootstrap was used for the front-end framework to style elements. PostgreSQL for the database. Git and GitHub for version control and Heroku for deployment.



---

## Implementation Plan

> ### User Stories

> ### Sitemap

[DLM Sitemap](https://app.lucidchart.com/documents/edit/f1969e48-fb25-4148-b36b-a8c9a932da01/0_0)  


<!-- ![DLM Sitemap](https://app.lucidchart.com/documents/edit/f1969e48-fb25-4148-b36b-a8c9a932da01/0_0)   -->


> ### Trello Board 

The project management application used to complete these tasks was Trello. This program allowed me to develop outlines for the majority of the application, including features, methods, timelines and so forth. Without this plan, implementing the application would have been significantly more difficult. 

- [DLM Trello Board](https://trello.com/b/JUx9nN3o/driving-app)  

> ### Wireframes


> ### ERD

[My ERD](https://app.dbdesigner.net/designer/schema/343185)  

For the MVP 

![DLM ERD](docs/ERD/erd.png)


> ### Screenshots



> ### Presentation

Here is a link to my [Google Slides Presentation](https://docs.google.com/presentation/d/1eogqfMuEI7aU3tamuzeD5aQIzG-SiKWQFydJYUXe2XI/edit#slide=id.g35f391192_00) that we present the day after submission to the Brisbane cohort.


---

## Development Log


- [Development log](docs/development-log.md)


---

## **Testing**



---


## Resources

- Amazon S3 was used for profile image upload
- Google Maps Places API for the Google address select box
- Bootstrap 4 was used for front-end framework
- Git and GitHub for version control
- Heroku for deployment

### Gems Used
- [Devise](https://github.com/heartcombo/devise)
  - for user authentication
- [AWS SDK S3](https://github.com/aws/aws-sdk-ruby)
  - for image upload
- Gravatar image tag in Gemfile is not being used yet
- [CanCan](https://github.com/ryanb/cancan)
  - for user authorisation
- Inline SVG in Gemfile is not being used yet
- [Faker](https://github.com/faker-ruby/faker)
  - to build fake names on database in seeds.rb
- [Bullet](https://github.com/flyerhzm/bullet)
  - to check eager loading in development environment
- [Stimulus](https://github.com/stimulusjs/stimulus)
  - used when building the Google Maps autocomplete dropdown.

### Icons
- [Capicon](https://mariodelvalle.github.io/CaptainIconWeb/)
  - not currently being used but will implement in future update

### Images
- [Logomakr](https://logomakr.com/9dzQOD)
  - for my logo...
- [Lesson Background Image](https://unsplash.com/photos/Kuu5mmxkwW4)
  - used on the lesson show page

### Page Templates
- [404 Page](https://codepen.io/sqfreakz/pen/GJRJOY)
  - 404 page...


---


## Copyright

MIT License

Copyright (c) 2020 Simon Curran

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


--- 


## Author
© Simon Curran
[www.simonmcurran.com](https://www.simonmcurran.com/)