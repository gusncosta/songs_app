class SongsController < ApplicationController
    
    helper_method :sort_column, :sort_direction
    
    #Index page action
    def index
        #gv is a global variable storing the value of a previous search
        #if no search element is given, return all data
        if params[:search] == nil && $gv == nil
            @songs = Song.order(sort_column + ' ' + sort_direction)
        
        #return only the elements mathcing the search
        else
            #change gv so it can store the value of current search for future sorting actions
            if  params[:search] != nil
                $gv = params[:search]
            end
            
            #search songs matching $gv values
            @songs_1 = Song.search $gv
            #return sorted elements
            @songs = @songs_1.order(sort_column + ' ' + sort_direction)
        end
     end
    
    #set default sorting parameter as title 
    private
    def sort_column
        Song.column_names.include?(params[:sort]) ? params[:sort] : "title"
    end
     
    #set default sorting direction as ascending
    def sort_direction
        %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
