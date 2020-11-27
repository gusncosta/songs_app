module SongsHelper
    
    #sorts table based on given column
    #requires a string entry in case column name and db key don't match 
    def sortable(column, title = nil)
        #sets column title based on db key
        title ||= column.titleize
        
        #defines a class for HTML tags 
        css_class = column == sort_column ? "current #{sort_direction}" : nil
        
        #sets the sorting direction
        direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
        
        #returns sorting link and class
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end
end
