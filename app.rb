require 'sinatra/base'

class MyApp < Sinatra::Base
	set :haml, :format => :html5
	set :views, File.join(Dir.pwd, 'views')
	set :public_folder, Proc.new { File.join(Dir.pwd, "public") }
	get '/' do
		File.read('index.haml')
	end

end
