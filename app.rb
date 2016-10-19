require 'sinatra/base'
require_relative 'lib/variant_checker'

class MyApp < Sinatra::Base
	set :haml, :format => :html5
	set :views, File.join(Dir.pwd, 'views')
	set :public_folder, Proc.new { File.join(Dir.pwd, "public") }

	get '/' do
		haml :index, locals: { students: nil }
	end

	post '/' do
		students = VariantChecker.new(params[:number].to_i, params[:count].to_i).check
		haml :index, locals: { students: students, you: params[:number], count: params[:count] }
	end

end
