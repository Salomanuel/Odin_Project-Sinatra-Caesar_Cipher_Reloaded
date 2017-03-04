require "sinatra"
require "sinatra/reloader" if development?
require_relative "Cipher/cipher.rb"

get "/" do
	@title   = "Caesar's Cipher"
	@comment = 'Ruby on Rails >> Sinatra >> <a href="http://www.theodinproject.com/courses/ruby-on-rails/lessons/sinatra-project?ref=lnav">Project: Sinatra Project</a>'
	erb :index
end

post "/" do
	@text   = params[:text]
	@cypher = caesar_cipher(@text)
	erb :results
end