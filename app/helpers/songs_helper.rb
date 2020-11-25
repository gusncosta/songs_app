module SongsHelper
    #sorts table based on given column
    #requires a string entry in case column name and db key don't match 
    def sortable(column, title = nil)
        #sets column title based on db key
        title ||= column.titleize
        #sets the sorting direction
        direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
        #returns sorting link
        link_to title, :sort => column, :direction => direction
    end
end
