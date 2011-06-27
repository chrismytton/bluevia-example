# Use bundler to manage dependencies
require 'bundler/setup'
Bundler.require

# OmniAuth requires sessions to be enabled.
enable :sessions

# Add the `:bluevia` strategy from our fork of OmniAuth (see Gemfile) to the
# rack middleware stack.
use OmniAuth::Builder do
  provider :bluevia, ENV['BLUEVIA_CLIENT_ID'], ENV['BLUEVIA_CLIENT_SECRET']
end

# When the user first arrives at the application, we check for a valid session.
# If there is a session then we set the `@auth` instance variable and render
# `index.erb`.
#
# If there is no session, we send the user to the login screen.
get '/' do
  if session[:auth]
    @auth = session[:auth]
    erb :index
  else
    redirect to('/login')
  end
end

# Super simple login screen
get '/login' do
  %{<a href="/auth/bluevia">Sign in with Bluevia</a>}
end

# Destroy the user's session and redirect
get '/logout' do
  session[:auth] = nil
  redirect to('/')
end

# When Bluevia calls back to our application after successfully processing the
# OAuth request, we take the omniauth hash out of the request and store it in
# the session, then we redirect the user to the homepage where they can view
# the auth details.
get '/auth/:name/callback' do
  auth = request.env['omniauth.auth']
  session[:auth] = auth
  redirect to('/')
end
