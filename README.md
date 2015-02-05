# Rack-based Web Application

This is a rack-based web application developed as part of a class in the [Back-End Web Development class at Betamore][bewd]. This is a basic web application that has the same components of a Rails application, but much more simple, home-grown versions of them. The purpose of this application is the illustrate clearly the components of a Rails application, the roles they play in the application and how they interact with each other.

## Install

You must have Ruby 2.2 and Bundler installed, then you just run these commands:

    bundle
    shotgun

Then you can access the application at [http://localhost:9393](http://localhost:9393)

## Lesson

You can see the in-class version of this application being built at:

[https://www.youtube.com/playlist?list=PLlVfJltWEUJ7k1_E1jJfFaeW6GIxIN7Tc](https://www.youtube.com/playlist?list=PLlVfJltWEUJ7k1_E1jJfFaeW6GIxIN7Tc)

## Follow-up Assignment

The follow up assignment to this application is to build a page that allows you to show a list of messages, who posted them and when they were posted. Because this is a simple application that lacks a database layer and a persistence layer to interact with it, you should store the messages as an array of hashes in the session.

To make sessions work, you need to add the line `use Rack::Session::Cookie, secret: 'secret'` to the `config.ru` file, see the file in this repository. You will then be able to access the session in a controller using `@request.session`.

You can see a working example of this application at [https://morning-wave-5928.herokuapp.com](https://morning-wave-5928.herokuapp.com)

[bewd]: http://betamore.com/academy/back-end-web-development/
