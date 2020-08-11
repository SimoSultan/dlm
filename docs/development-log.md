![Driving Lesson Rails Marketplace]()


## Development Log:
###### By Simon Curran
----
### with status updates:

> Monday 20th July 2020


- 20/07/20 `14:00` - **Outlined tasks in [Trello Board](https://trello.com/b/JUx9nN3o/drivinglessonmarketplace)**
- 20/07/20 `15:00` - **Created basic pages in [Site Map](https://app.lucidchart.com/invitations/accept/5c7ca853-a396-463d-bc0f-659cb9f1d4ee)**
- 20/07/20 `15:10` - **Implemented basic features in Site Map**
- 20/07/20 `16:00` - **Started designing Wireframes**
- 20/07/20 `17:00` - **Setting up README.md**
- 20/07/20 `17:30` - **Finished setting up skeleton of README.md**


> Tuesday 21st July 2020

- 21/07/20 `12:00` - **Working on more wireframes**
- 21/07/20 `17:00` - **Finished wireframes**


> Wednesday 22nd July 2020

- 22/07/20 `10:00` - **Added in more detail to my Trello**
- 22/07/20 `11:00` - **Started ERD**
- 22/07/20 `14:00` - **Finished ERD**
- 22/07/20 `14:30` - **Setting up app**


> Friday 24th July 2020

- 24/07/20 `03:00` - **Implemented Bootstrap 4 with header and footer to start off with**


> Monday 27th July 2020

- 27/07/20 `10:00` - **Added in relationships to ERD on a note**
- 27/07/20 `13:00` - **First commit to Git**
- 27/07/20 `14:00` - **Deployed to Heroku**
- 27/07/20 `16:00` - **Built basic sign-up page**

----

> Tuesday 28th July 2020

- 28/07/20 `10:00` - **Basic authentication working**
- 28/07/20 `13:00` - **Student creation after user sign up working**
- 28/07/20 `16:00` - **Student and instructor tables migration fixed**

----

> Wednesday 29th July 2020

- 29/07/20 `10:00` - **Problem with redirect to edit student/instructor path after signup not working**
- 29/07/20 `13:00` - **Lesson model added, new lesson creation and all lessons showing**
- 29/07/20 `16:00` - **Added in relationships to ERD on a note**

----

> Thursday 30th July 2020

- 29/07/20 `19:00` - **Validation for phone numbers**
- 29/07/20 `21:00` - **Displaying phone numbers nicely with helper method**

----

> Friday 30th July 2020

- 30/07/20 `20:00` - **Admin scaffold created**
- 30/07/20 `21:00` - **All lessons index page displaying only lessons for logged in person**
- 30/07/20 `22:00` - **Added in a disabled prompt for select drop down menus**
- 30/07/20 `23:00` - **Created lesson info and payment tables/models**

----

> Sunday 2nd August 2020

- 02/08/20 `20:00` - **Added new lesson form into partial that now displays on new lesson page and student show page**

----

> Monday 3rd August 2020

- 03/08/20 `10:00` - **Setup Active Storage**
- 03/08/20 `11:00` - **Image upload to local storage working**
- 03/08/20 `12:00` - **Integrated Amazon S3 and image upload to S3 working**
- 03/08/20 `13:00` - **Created and now validating student and instructor date of birth with helper methods upon creation**
- 03/08/20 `14:00` - **Integrated Google Maps Places API**
- 03/08/20 `15:00` - **Google Maps autocomplete working for student address input**
- 03/08/20 `16:00` - **Edit instructor page fully working now**
- 03/08/20 `17:00` - **Fixed a bug where lesson information wasn't being prefilled into edit lesson page**

----

> Tuesday 4th August 2020

- 04/08/20 `10:00` - **All validation for students and instructors working on update**
- 04/08/20 `11:00` - **Removed status and transmission columns from lesson table**
- 04/08/20 `12:00` - **Incorporated more views into Admin role**
- 04/08/20 `13:00` - **Integrated CanCan gem for authorization**
- 04/08/20 `14:00` - **CanCan authorization now working**
- 04/08/20 `15:00` - **Bug fix on displaying dates on show pages**
- 04/08/20 `15:30` - **Styled avatar pictures**
- 04/08/20 `16:00` - **Added warning messages to sign-up pages**
- 04/08/20 `16:30` - **Fixed a bug that was causing home page not showing due to CanCan**

----

> Wednesday 5th August 2020

- 05/08/20 `10:00` - **Displaying CanCan error messages nicely**
- 05/08/20 `11:00` - **Validated lesson creation if user does not have all relevant profile data**
- 05/08/20 `12:00` - **Fixed credentials issue that was causing Amazon and Google Maps to fail on deployed site**
- 05/08/20 `12:30` - **Removed admin role from sign-up page on Heroku**
- 05/08/20 `13:00` - **Added all Users page to Admin nav bar**
- 05/08/20 `13:30` - **Fixed a routing error with devise and logout**
- 05/08/20 `14:00` - **Started styling, chose main colours and styled navbar**
- 05/08/20 `17:00` - **Styled login and sign-up pages**


----

> Thursday 6th August 2020

- 06/08/20 `20:00` - **Styling updates**

----

> Friday 7th August 2020

- 07/08/20 `20:00` - **Styling updates**

----

> Saturday 8th August 2020

- 08/08/20 `20:00` - **Styling updates**
- 08/08/20 `21:00` - **Styling mostly completed now**

----

> Sunday 9th August 2020

- 09/08/20 `20:00` - **Added favicon**
- 09/08/20 `21:00` - **Custom 404 page integrated**
- 09/08/20 `21:30` - **Big fixing links**

----

> Monday 10th August 2020

- 10/08/20 `10:00` - **Validating addresses on updating edit page**
- 10/08/20 `11:00` - **Added eager loading to app**
- 10/08/20 `12:00` - **Commented code throughout app**
- 10/08/20 `14:00` - **Footer now working on all pages**
- 10/08/20 `16:00` - **Finished README**
- 10/08/20 `16:30` - **Forgot password devise page styled**
- 10/08/20 `17:30` - **Added home page content**
- 10/08/20 `18:00` - **Fixed linking issues on README**
- 10/08/20 `18:30` - **Fixed rails alert error css bug**
- 10/08/20 `19:00` - **Added sitemaps to Software Development Plan**
- 10/08/20 `21:00` - **Updated Software Development Plan with more content**

----

> Tuesday 11th August 2020

- 11/08/20 `09:00` - **Submitted final draft of assessment**
- 11/08/20 `09:30` - **Finished off development log**
- 11/08/20 `14:00` - **Finished Software Development Plan**
- 11/08/20 `16:30` - **Finished presentation slides**


----





### The End.

