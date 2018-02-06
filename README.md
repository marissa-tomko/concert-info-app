# Rails Checkpoint

### Description

  - This project was a challenge given in Dev Bootcamp to test my knowledge on the following subjects:
    * The asset pipeline
    * Working with vertical slices
    * File organization
    * Setting up models and migrations
    * Schemas
      * Users can attend many concerts
      * A concert can have many people attend it
      
### Parts of the App
  - Concerts Page
    * Shows all concerts displayed in ascending order with the name and date of the show
    * Each band name links to the corresponding concert SHOW view
    * Root points to all concerts page
    * This page is displayed even if the user is not logged in
    * A link to this page titled 'Home' appears at the top of every page

  - User Sign Up
    * User sign up form that takes in first name, last name, email and password with all fields required
    * Errors shown if all fields not filled out
    * Signing up logs the user in as well
    * If a user is not signed in, a signup link appears at the top of every page

  - User Login
    * Shows login form that takes in email and password
    * If the user doesn't exist or password doesn't match, an error is displayed to the user
    * If the user is not logged in a login link appears at the top of every page.

  - User Logout
    * User logout link shown in universal nav only if the user is logged in
    * GET to '/logout' and points to the session controller's destory method

  - Concert Show
    * Displays the band name, venue, date and time of show
    * Shows the list of users attending the concert
    * Logged in users can see their name in bold

  - Attend Concert
    * Form on the concert SHOW page with a button to attend a concert, visable only if a user is logged in
    * This button should makes an AJAX call so that a record of the user planning to attend a particular concert is stored 
    * The button is hidden when the response is recieved, and the user's name is added to the list of attendees
