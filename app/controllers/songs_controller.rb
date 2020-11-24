class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def search
        @songs = Song.search params[:search]
    end
    
    def title_sort
        @songs = Song.all.sort_by &:title
    end
end
