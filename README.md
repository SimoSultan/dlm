# SIMO_SULTAN'S DRIVING LESSONS MARKETPLACE

The app: [DLM](https://driving-lesson-marketplace.herokuapp.com/)  
Source code: [https://github.com/SimoSultan/dlm](https://github.com/SimoSultan/dlm)

![GitHub followers](https://img.shields.io/github/followers/SimoSultan?style=social)  
![Twitter Follow](https://img.shields.io/twitter/follow/simo_sultan?style=social)  
[www.simonmcurran.com](https://www.simonmcurran.com/)  




#### Index:
- [**Software Development Plan**](docs/sdp.md) - my implementation plan
- [**Description**](#Description) - what the site is
- [**Motivation**](#Motivation-and-Inspiration) - to develop the site
- [**Target Audience**](#Target-Audience) - who will use the site
- [**Features**](#Features) - what does the site do
- [**Tech Stack**](#Tech-Stack) - the languages that make up the app
- [**Resources**](#Resources) - links to resources I used
- [**Copyright**](#Copyright)



---


## Description

This is my first Ruby on Rails application. Currently studying at [Coder Academy](https://coderacademy.edu.au) and we were tasked with building a 2-way marketplace application and were given 10 days to complete this piece of assessment. This application is intended to be used by Learner Drivers and Instructors. Where a learner driver is able to book a lesson with an instructor and then are able to see that lesson in their 'my lessons' tab. Instructors and Admin roles can book lessons for students as well. Both instructors and students can see all of the upcoming and their past lessons for reference. 

This application is the MVP for a full-fledged marketplace.


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

- Ruby 2.7.1
- Rails 6.0.3.2
- HTML
- CSS
- SASS
- JavaScript and 
- PostgreSQL
- Git
- Bootstrap 4
- Heroku

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