# README

* Ruby version: 2.3.1

* To get going run the following commands -

bundle

rails db:create

rails db:migrate

rails db:seed

* To test simply run

rails test

* what parts are you happiest with

Having only one User model and having two references to both the recipient and sender on the Message model is clean, as opposed to creating an extra model (Hero/Customer) - with more associations and coding required.

* what parts are you least happy with

The authentication, I know you said don't bother! But I'm used to devise and I figured it would be effective to ensure logged in users could see only their own messages and tie the message sender to a logged in user. I'm not happy with it because devise is a bit limited at role based actions which would cause me some headaches if I were to spend more time on this app. It's workable, just not in a short time frame.

* would you have approached the exercise differently if you had more time? If so how.

I would have spent more time on the tests. Thought about each significant piece of functionality and written a test for it.

* what your next steps would be

My next steps would be to add the ability for an admin to view an individuals received messages. I would do this with a simple button on the users page which posts the admin to a new Messages action which takes the parameters (user id) and displays the messages.
