require_relative 'config/environment'

class App < Sinatra::Base


    get'/' do   #serve the form to the browser
        erb:new 
    end

    post'/student' do 
        @student = Student.new(params[:student]) 
        params[:student][:courses].each do|details|
            Course.new(details)
        end
        @courses = Courses.all 
        erb :student
    end

end
#     get '/' do
#         erb :index
#     end

#     get '/new' do
#     @name = params[:name]
#     @breed = params[:breed]
#     @months_old = params[:months_old]
#     erb :create_puppy
#     end

#     post '/puppy' do
#     @name = params[:name]
#     @breed = params[:breed]
#     @months_old = params[:months_old]
#     erb :display_puppy

#     end
# end
