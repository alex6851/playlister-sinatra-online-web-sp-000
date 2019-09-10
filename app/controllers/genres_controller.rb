class GenresController < ApplicationController

    get '/genres' do
        @genres = Genre.all
        erb :'/genres/show' 
      end

end