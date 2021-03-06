# Homework 2 - *FUKBAY*

**FUKBAY** is a Ruby on Rails Facebook clone.

Submitted by: **Ian Tran**

Time spent: **X** hours

URL: **Insert your Heroku URL here**

## User Stories

The following **required** functionality is complete:


**GENERAL PART**
* [x] User can sign up by providing their email, password, and name. 
* [x] User can login using an email and password. 
* [x]  Clicking the "add friends" link takes the user to a page with all users listed, with a link to "add user to friends list". 
* [x] After logging in, the user is taken to a Newsfeed page that has a list of incoming posts, sorted in descending chronological order (newest messages at top)

The following **optional** functionality is complete:
* [x] Add UI
* [ ] User can attach an image as profile Img.
* [ ] User can log in with Facebook. 
* [ ] User A can "block" User B. If User A blocks User B, they will not see messages from User B. User B will not know they have been blocked.
* [x] User can remove friends from their friends list.
* [ ] User can unblock friends from their block list.
* [x] Write as many test as possible
* [ ] Using ajax to transfer data from the View to the Backend

**POST PART**

* [x] A user wall should list all the post from that Users
* [ ] User can see other user wall
* [x] After logging in, the user is taken to a Newsfeed page that has a list of posts from his friends, sorted in descending chronological order (newest messages at top)
* [x] User can create a new Post
* [ ] user can post on another user's wall 
* [x] User can like or unlike a post
* [ ] User can comment on a post
* [ ] Implement User profile pages

The following **optional** functionality is complete:


* [ ] Implement Infinite Scroll. Hint: you can use the [kaminari gem](https://github.com/amatsuda/kaminari) and [jquery-infinite-pages gem](https://github.com/magoosh/jquery-infinite-pages).


**MESSAGE PART**
* [x] Click the "Messages" buttons will takes user to the chat page.
* [x] User can send a message to other users
* [ ] Unread messages should be **bold** or something similar in the list of messages. 
* [ ] Implement the "Seen" function (Ex: Seen at 2 hours ago)
* [x] User can only read messages where they are the recipient.
* [x] A notification sent to Slack when a new post created.


The following **optional** functionality is complete:
* [x] Add my UI
* [x] Create template for components of the website (but failed)
* [x] Implement a Friend list on the to right


**EMAIL PART**


* [ ] User gets an email when they receive a message,or someone post on their wall with a link to view the message.
* [ ] User gets an email when a message they have sent is read with the time at which the message was read.
* [ ] User can send a message to the email address of a non-registered user. The recipient will receive an email with a link to sign up for the service, and after creating an account, will be able to view the sent message. 

The following **additional** features are implemented:

- [ ] (List anything else that you can get done to improve the app functionality!)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthrough](relative-path-to-your-gif-file-on-github-or-absolute-path-to-file-on-imgur-or-youtube)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.