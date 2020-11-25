class SongsController < ApplicationController
    
    helper_method :sort_column, :sort_direction
    
    def index
        if params[:search] == nil && $gv == nil
            @songs = Song.order(sort_column + ' ' + sort_direction)

        else
            if  params[:search] != nil
                $gv = params[:search]
            end
            @songs_1 = Song.search $gv
            @songs = @songs_1.order(sort_column + ' ' + sort_direction)
        end
     end
    
    #def search
    #    @songs = Song.search params[:search]
    #end
    
    #def title_sort
    #    @songs = Song.all.sort_by &:title
    #end
    
    private
    def sort_column
        Song.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
      
    def sort_direction
        %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
