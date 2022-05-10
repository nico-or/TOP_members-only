# README

Implementation of a simple webapp with authentication.

Technical requirements:
- External users:
  - Can't see the post author
  - Can't create new posts
  - Can signup

- Signed-up users:
  - Can see post author
  - Can create new posts
  - Can login and logout

Implementation notes:
- basic Bootstrap UI
- Authentication was implemented using the rails ```has_secure_password``` method.
  - Implementation based on [Railcasts #250](http://railscasts.com/episodes/250-authentication-from-scratch-revised?autoplay=true)
  - At the time of writing, the Devise gem has integration issues with Rails 7. In particular, the logout functionality.

---

This repo is an implementation of the [Members Only](https://www.theodinproject.com/lessons/ruby-on-rails-members-only) project.

This is part of [The Odin Project](https://www.theodinproject.com/).
