**WHAT SHOULD I DO NOW?**
FIRST STEP: LIST OUT ALL THE PROBLEMS LEFT
  GENERAL BUG FIX
  * [ ] Change html image to <%= asset_path("friend_list.png")%> so it can work on Heroku
  * [ ] Log out button is still there


  SPECIFIC BUG FIX

  * [x] ADMIN - OK

  * [x] WELCOME PAGE
    * [x] The distance between welcome image and text is too closed
    * [x] Signup and Sign in button not yet show up
    * [x] The friendlist is an image -> not responsive
    * [x] The logo is an image -> not responsive
    * [x] The logo not link to home page
    

  * [x] SIGN-IN PAGE
    * [x] The form is too high, near the frirendlist
    * [x] The friendlist is an image -> not responsive
    * [x] The logo is an image -> not responsive
    * [x] The logo not link to home page
    * [x] No sign up button there
    
    

  * [ ] SIGN-UP PAGE
    * [x] Similar issues as the Login-page
    * [x] The distance between elements inside the form is too closed, how to handle this?
    * [x] HALF - Need to add profile_image here. How to handle it with devise?
    * [x] Endpoint should be add new friends
    * [ ] No flash show up to inform user about any errors

  * [x] ADD-FRIENDS PAGE

  * [ ] NEWSFEED
    * [x] The nav-bar on the left has problem
    * [x] Have not check current user available or not  
    * [x] Error Sign-in without profile image (becaused of devise)
    * [x] Need add more-friends button
    * [ ] The comment still not work
    * [ ] The like button is not work
    * [ ] The new post form is ugly
    * [ ] There is no info in the black part yet
    * [x] Click on the chat part, there will be error if the friend_list is blank or chatting_friedn is blank 
    **[ ] THE HEIGHT OF POST IS PIXEL, NOT AUTO**
  
  * [ ] CHAT-SCREEN
    * [ ] Click on friend list, there should be a chatbox show up
    * [ ] There will be an x button to close a chat box
    * [ ] Scroll the moust should horizontal scroll the chat-boxes


  * [ ] Other techniques must be added
    * [ ] Commenting on Post with Ajax Optimistic
    * [ ] Like post with Ajax Optimistic
    * [ ] Like comment with Ajax Optimistic
    * [ ] Infinite scroll with Newsfeed and Wall
    * [ ] Upload image in post and profile picture
    

  * [ ] Other techniques should be added
    * [ ] Return JSON and use JQuery to handle that Json and display it
    * [ ] Add WebSocket so we can chat in realtime
    * [ ] Mention (tagging) other users in a post
    * [ ] Add notification through WebSocket (if anyone mention or send a post to my page)
    * [ ] Loading page animation bulma
    * [ ] Mini badge to show how many notification unread