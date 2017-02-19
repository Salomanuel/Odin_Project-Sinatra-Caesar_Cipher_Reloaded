require "sinatra"
require "sinatra/reloader" if development?

get "/" do
	@title = "form page"
	erb :index
end