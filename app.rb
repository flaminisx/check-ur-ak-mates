require 'sinatra/base'

class MyApp < Sinatra::Base

	get '/' do
		File.read('main.html')
	end

end
