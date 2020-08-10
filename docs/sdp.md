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

With my wireframes, I hadn't understood what I was and was not able to do, 1. in the time frame, and 2. with how rails worked. I will details in each section where the wireframes different from production. 

- [Balsamiq Wireframes](docs/wireframes/driving_lesson_marketplace.bmpr)


#### Student Wireframes

- Student Profile Page
![Student Profile Page](docs/wireframes/student_profile.png)

- Student Edit Profile Page
![Student Edit Profile Page](docs/wireframes/student_edit_profile.png)

- Student Sign-up Page
![Student Edit Account Page](docs/wireframes/student_signup.png)

- Student All Lesson Page
![Student All Lesson Page](docs/wireframes/student_all_lessons.png)


#### Instructor Wireframes

- Instructor Profile Page
![Instructor Profile Page](docs/wireframes/instructor_profile.png)

- Instructor Edit Profile Page
![Instructor Edit Profile Page](docs/wireframes/instructor_edit_profile.png)

- Instructor Sign-up Page
![Instructor Edit Account Page](docs/wireframes/instructor_signup.png)

- Instructor All Lesson Page
![Instructor All Lesson Page](docs/wireframes/instructor_all_lessons.png)


#### Other Wireframes

 
- Home Page was to have buttons that turned into a sign-up or log-in form. However, only buttons were included to go to separate sign up and log in pages due to Devise supplying them.
![Home Page](docs/wireframes/home.png)

- 404 Page was found from a nice template online. This page didn't have an exact design.
![404 Page](docs/wireframes/404.png)

- Forgot Password Page was turned into change 
![Forgot Password Page](docs/wireframes/forgot_password.png)


> ### ERD

[My ERD](https://app.dbdesigner.net/designer/schema/343185)  

For the MVP 

![DLM ERD](docs/ERD/erd.png)


<!-- R14	An ERD for your app
R15	Explain the different high-level components (abstractions) in your app
R16	Detail any third party services that your app will use
R17	Describe your projects models in terms of the relationships (active record associations) they have with each other
R18	Discuss the database relations to be implemented in your application
R19	Provide your database schema design
R20	Describe the way tasks are allocated and tracked in your project -->



> ### Screenshots

Here are the screenshots from the mobile view from the student's perspective, with one desktop view of admin. The instructor's pages are similar to this which is why they haven't been included. The desktop view of admin provides us with a look at how the app looks there.


***Disclaimer: All data seen below in screenshots is fake.***


- Home Page
![Home Page](docs/screenshots/home.png)

- Signup Page
![Signup Page](docs/screenshots/signup.png)

- Login Page
![Login Page](docs/screenshots/login.png)

- Forgot Password Page
![Login Page](docs/screenshots/forgot_password.png)

- Student Profile Page
![Student Profile Page](docs/screenshots/student_profile.png)

- Student Edit Profile Page
![Student Edit Profile Page](docs/screenshots/student_edit_profile.png)

- Student Edit Account Page
![Student Edit Account Page](docs/screenshots/student_edit_account.png)


- Student All Lesson Page
![Student All Lesson Page](docs/screenshots/student_all_lessons.png)

- Student New Lesson Page
![Student New Lesson Page](docs/screenshots/student_new_lesson.png)

- Student View Lesson Page
![Student View Lesson Page](docs/screenshots/lesson_show.png)

- Admin All Students/Instructors/Admin/Users/Lessons Page
![Admin All Students Page](docs/screenshots/admin_all_students.png)



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