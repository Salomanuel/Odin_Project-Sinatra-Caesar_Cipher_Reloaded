require "sinatra"
require "sinatra/reloader" if development?

get "/" do
	@title   = "Caesar's Cypher"
	@comment = 'Ruby on Rails >> Sinatra >> <a href="http://www.theodinproject.com/courses/ruby-on-rails/lessons/sinatra-project?ref=lnav">Project: Sinatra Project</a>'
	erb :index
end
