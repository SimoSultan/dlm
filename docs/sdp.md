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

There will be 3 different types (roles) of people who will use the app. They are: Student, Instructor and an Admin role. 

#### Students
A student can come in 2 variants, someone who is old enough to start learning by QLD law, and someone who isn't. There is client side validation to check the age of a user on signup. *(just realised that validation only occurs after a user is created, meaning there will be users on the users table who will never be able to sign up, or at least until they turn of age. I should add date of birth on user sign up to check it then. future update, not something to do 1 night before assessment is due)*. Then when that person is of age and signs up, they will be able to book lessons and choose their instructor they want. 

#### Instructors
An instructor can come in 2 variants, someone who is old enough to teach by QLD law and has appropriate licensing *(but I don't have validation for their license numbers against Department of Transport details)*, and someone who isn't. There is client side validation to check the age of a user on signup. Then when that person is of age and signs up, they will be able to book lessons with students *(which actually need a request to be sent and confirmed by the other party, and not just a straight out lesson created)*, see all of their lessons they have and have had and choose their instructor they want. 

#### Admins
An Admin is a person who works for DLM. They will have the ability to see and manage everything on the site. That is all users, students, instructors, admins and lessons. In the future they will have the opportunity to add, edit and delete different lesson lengths and costs as well. 



> ### Sitemap
- [DLM Sitemap](https://app.lucidchart.com/documents/edit/f1969e48-fb25-4148-b36b-a8c9a932da01/0_0)  


#### Original Sitemap
The original sitemap was a great start to how to navigate through the app. But was unaware of how many more pages there would be. A 'bacl' button has been implemented and a nav menu so that each person can get to any page they have available to them.

![Original DLM Sitemap](./sitemap/original_driving_lesson_marketplace_sitemap.png)


#### Updated Sitemap
The new sitemap includes all the extra pages that were include

![Updated DLM Sitemap](./sitemap/updated_driving_lesson_marketplace_sitemap.png)


> ### Trello Board 

The project management application used to complete these tasks was Trello. This program allowed me to develop outlines for the majority of the application, including features, methods, timelines and so forth. Without this plan, implementing the application would have been significantly more difficult. 

- [DLM Trello Board](https://trello.com/b/JUx9nN3o/driving-app)  



> ### Wireframes

With my wireframes, I hadn't understood what I was and was not able to do, 1. in the time frame, and 2. how rails and some gems worked that would affect views. I will detail in each section where the wireframes differ from production. 

- [Balsamiq Wireframes](./wireframes/driving_lesson_marketplace.bmpr)


#### Student Wireframes

##### Student Profile Page
It's similar, but the main difference is in the new lesson form and lack of slideout menu again. And the layout regarding the new lesson form doesn't move around like originally planned. It always sits underneath itself.
![Student Profile Page](./wireframes/student_profile.png)

##### Student Edit Profile Page
Stayed the same.
![Student Edit Profile Page](./wireframes/student_edit_profile.png)

##### Student Sign-up Page
Stayed the same.
![Student Edit Account Page](./wireframes/student_signup.png)

##### Student All Lesson Page
Didn't get the search and filter functions onto MVP. And doesn't include the slideout modal.
![Student All Lesson Page](./wireframes/student_all_lessons.png)


#### Instructor Wireframes

##### Instructor Profile Page
Only showing instructor's upcoming and previous lesson. Didn't implement the feature where it shows a table of all upcoming lessons for that day. Also don't have counts running for the amount of lessons the instructor has completed and so forth.
![Instructor Profile Page](./wireframes/instructor_profile.png)

##### Instructor Edit Profile Page
Stayed the same.
![Instructor Edit Profile Page](./wireframes/instructor_edit_profile.png)

##### Instructor Sign-up Page
Stayed the same.
![Instructor Edit Account Page](./wireframes/instructor_signup.png)

##### Instructor All Lesson Page
Didn't get the search and filter functions onto MVP. And doesn't include the slideout modal.
![Instructor All Lesson Page](./wireframes/instructor_all_lessons.png)


#### Other Wireframes

 
##### Home Page 
Was to have sign-up and log-in buttons that turned into a sign-up or log-in form. However, only buttons were included to go to separate sign up and log in pages due to Devise supplying them.
![Home Page](./wireframes/home.png)

##### 404 Page 
Was found from a nice template online. This page didn't have an exact design.
![404 Page](./wireframes/404.png)

##### Forgot Password Page 
Stayed the same.
![Forgot Password Page](./wireframes/forgot_password.png)


> ### ERD

- [My ERD](https://app.dbdesigner.net/designer/schema/343185)  

For the MVP 

![DLM ERD](./ERD/erd.png)


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


##### Home Page
![Home Page](./screenshots/home.png)

##### Signup Page
![Signup Page](./screenshots/signup.png)

##### Login Page
![Login Page](./screenshots/login.png)

##### Forgot Password Page
![Login Page](./screenshots/forgot_password.png)

##### Student Profile Page
![Student Profile Page](./screenshots/student_profile.png)

##### Student Edit Profile Page
![Student Edit Profile Page](./screenshots/student_edit_profile.png)

##### Student Edit Account Page
![Student Edit Account Page](./screenshots/student_edit_account.png)


##### Student All Lessons Page
![Student All Lessons Page](./screenshots/student_all_lessons.png)

##### Student New Lesson Page
![Student New Lesson Page](./screenshots/student_new_lesson.png)

##### Student View Lesson Page
![Student View Lesson Page](./screenshots/lesson_show.png)

##### Admin All Students/Instructors/Admin/Users/Lessons Page
![Admin All Students Page](./screenshots/admin_all_students.png)



> ### Presentation

Here is a link to my [Google Slides Presentation](https://docs.google.com/presentation/d/1eogqfMuEI7aU3tamuzeD5aQIzG-SiKWQFydJYUXe2XI/edit#slide=id.g35f391192_00) that we present the day after submission to the Brisbane cohort.


---

## Development Log


- [Development log](./development-log.md)


---

## Testing

Only manual testing was undertaken for this assignment due to time restraints to implement automatic testing which is something I really wish I had more time to look into. Manual tests that were undertaken were any time a new feature was implemented. For example the tests that were run;
- rails app generation
- implementing bootstrap
- deploying to heroku
- implementing devise signup/login authentication gem
- rails generation of scaffold pages
- reading and displaying data pulled from the database
- creation of new data into the database
- updating data in database
- destroying data in database
- implementing enums for different roles for users
- implementing partials and dryer/dynamic views
- implementing cancan authorization of different data being available for different roles/users
- seeding the database
- full styling of app
- implementing Amazon S3 image upload for avatar photos
- attaching images to specific roles (i.e. students/instructors/admins)

Manual testing takes up a lot of time, especially when it's a trial and error method. In the end, investing the time to understand how you will test throughout the app would highly advantageous for speeding up testing processes. 



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