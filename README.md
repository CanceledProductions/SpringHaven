# Original App Design Project - README Template

## SpringHaven

### Table of Contents
- Overview
- Product Spec
- Wireframes
- Schema

Overview

Description:
In this app you will be immersed in the world of SpringHaven, a social hub that takes place in a fictional world. You will be able to create your character along with interacting with other existing characters in this world and other characters created by other users.

App Evaluation
[Evaluation of your app across the following attributes]

Category: Interactive Social Hub

Mobile: Only optimized for IOS.

Story: This app takes place in a fictional world called SpringHaven and will be a place where you can upload your character and interact with NPC and other users in this world.

Market: The potential users would be those who enjoy roleplaying and socializing as well as gamers.

Habit: We want this world to feel immersive where the user is able to experience it differntly each time with their interactions.

Scope: For this app we want to make sure to have the social hub key elements complete where the user is able to post on their feed and interact with users of this world.

Product Spec
1. User Stories (Required and Optional)
   
Required Must-have Stories:

Issue 1: Project Initialization
[X] Set up the Xcode project with the required configurations.
[X] Create the app's basic structure, including navigation controllers.

Issue 2: Character Creation Screen
[X] Create a character into the user database.
[ ] Implement the UITableView to display characters from the TV show and other users.
[X] Add Profile avatar option.

Issue 3: Character Feed
[X] Create the character feed screen to see other users posts.
[ ] Display character information and an image.
[X] Add a back button to return to the character listing screen.

Issue 4: Club Listing Screen
[ ] Design and implement a club listing screen with placeholder data.
[ ] Set up the UITableView to display clubs created by other users.
[ ] Add navigation to the club detail screen.

Issue 5: Club Detail Screen
[ ] Create the club detail screen with club information and banner display.
[ ] Implement the back button for returning to the club listing.

Issue 6: Camera Integration
[ ] Integrate the camera view for taking pictures.
[ ] Create a screen for character creation.
[ ] Implement image upload functionality to add characters to the list.

Issue 7: Movie Listing Screen
[ ] Design and develop a screen to list movies that inspired your TV show.
[ ] Set up UITableView to display movie data.
[ ] Implement navigation to the movie detail screen.

Issue 8: Movie Detail Screen
[ ] Create the movie detail screen with the movie poster and details.
[ ] Add a back button for returning to the movie listing screen.

Issue 9: World Map Screen
[ ] Create a screen that displays a map of the world of Spring Haven.
[ ] Integrate map functionalities (you can use MapKit or a mapping library).
[ ] Implement navigation to access the map from the tab bar.

Issue 10: App Icon
[x] Design and set up an app icon for your app.

Issue 11: Styling and Theming
[x] Define the app's visual theme, colors, fonts, and UI elements.
[x] Apply consistent styling across all screens.

Issue 12: Testing and Debugging
[x] Test the app on different iOS devices and simulator versions.
[x] Identify and fix any bugs or issues.

Optional Nice-to-have Stories:

[ ] User is able to explore the map and see different locations of SpringHaven
[ ] User is able to talk to NPC characters in this world
[ ] User is able to uncover mysterious that exist in this mini world

2. Screen Archetypes
- Login Screen
   - This is the screen the user will either login to an existing character or create a new one.
- Character Creation Screen
   - This is where the user will be able to create their character.
- Character List Screen
   - This is where users can see the profiles of other characters and see their backstories.
- Club List Screen
   - This is where users can see the clubs of other characters and see their details.
- Movie List Screen
   - This is where users can select a movie from a list of movies that inspired Spring Haven.
- Map Screen
   - This is where users can see the map of Spring Haven.

3. Navigation

Tab Navigation (Tab to Screen)
- Home/Social Screen
- Profile Screens
- New Message Screen

Flow Navigation (Screen to Screen)
 - Login Screen
=> Character Details Page

- Camera View
=> Character Creation Page
=> Character Details Page

- Character List Page
=> Character Details Page

- Club List Page
=> Club Details Page

- Movie List Page
=> Movie Details Page

GIFs

Sprint 1 Progress
<div>
    <a href="https://www.loom.com/share/295ba2c6a38f49f7bb9ce2366b924392">
    </a>
    <a href="https://www.loom.com/share/295ba2c6a38f49f7bb9ce2366b924392">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/295ba2c6a38f49f7bb9ce2366b924392-with-play.gif">
    </a>
  </div>

App Demo Video
<div>
    <a href="https://www.loom.com/share/38534cbb6d08403fb44cebc9e820aa44">
    </a>
    <a href="https://www.loom.com/share/38534cbb6d08403fb44cebc9e820aa44">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/38534cbb6d08403fb44cebc9e820aa44-with-play.gif">
    </a>
  </div>

  Final App Demo Video
  <div>
    <a href="https://www.loom.com/share/f2d001760bd84e9f8b0d5b8406e75e3c">
    </a>
    <a href="https://www.loom.com/share/f2d001760bd84e9f8b0d5b8406e75e3c">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/f2d001760bd84e9f8b0d5b8406e75e3c-with-play.gif">
    </a>
  </div>

Schema
[This section will be completed in Unit 9]

Models
[Add table of models]

Networking
[Add list of network requests by screen ]
[Create basic snippets for each Parse network request]
[OPTIONAL: List endpoints if using existing API such as Yelp]
