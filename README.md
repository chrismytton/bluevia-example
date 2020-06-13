**Update June 2020**: I'm not sure if Bluevia is still a thing. If it is then this code will almost certainly require some kind of modification to make it work. Going to leave the code here for posterity.

bluevia-example
===============

Simple ruby [sinatra](http://www.sinatrarb.com/) app to test the Bluevia API.

## Install

Get the code from github and use bundler to install dependencies.

    git clone https://github.com/chrismytton/bluevia-example
    cd bluevia-example
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
