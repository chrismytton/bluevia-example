bluevia-example
===============

[bluevia-example.heroku.com](https://bluevia-example.heroku.com) | [annotated source code](http://hecticjeff.github.com/bluevia-example/)

Simple ruby [sinatra](http://www.sinatrarb.com/) app to test the Bluevia API.

## Install

Get the code from github and use bundler to install dependencies.

    git clone https://github.com/hecticjeff/bluevia-oauth-app
    cd bluevia-oauth-app
    bundle install

## Setup

You'll need to [get an account](https://bluevia.com/en/user/register), and then
[get an api key](https://bluevia.com/en/api-keys/get-test) from Bluevia.

Once you've registered your application you'll need to export your API
key and secret that you are given, put the following in your
`~/.bashrc`.

    export BLUEVIA_CLIENT_ID='clientidfrombluevia'
    export BLUEVIA_CLIENT_SECRET='secretstringfrombluevia'

Save this file then source it with `source ~/.bashrc`.

## Usage

Start up the sinatra server by running ruby from within bundler.

    bundle exec ruby app.rb

MIT Licenced

Copyright (c) 2011, Chris Mytton
