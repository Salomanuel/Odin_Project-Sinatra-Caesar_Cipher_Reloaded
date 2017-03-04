require "sinatra"
require "sinatra/reloader" if development?

get "/" do
	@title = "Caesar's Cypher"
	erb :index
end