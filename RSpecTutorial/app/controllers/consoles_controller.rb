class ConsolesController < ApplicationController

    def index 
        consolesArray = ['WII', 'XBOX', 'Genesis']
        render(json: {'consoles' => consolesArray})
    end

    def consolesMft
        consolesMap = [{Name:'WII', Manf:'Nintendo'}, {Name:'XBOX', Manf:'Microsoft'}, 
        {Name:'Genesis', Manf:'Sega'}]
        render(json: {'consoles' => consolesMap.map{|console| console[:Name]}})
    end

    def consolesByMft
        consolesMap = [{Name:'NES', Manf:'Nintendo'},{Name:'WII', Manf:'Nintendo'}, {Name:'XBOX', Manf:'Microsoft'}, 
        {Name:'Genesis', Manf:'Sega'}]
        if params[:manf].present?
            consolesResult = consolesMap.select do |console| 
                console[:Manf] == params[:manf]
            end
        end
        render(json: {'consoles' => consolesResult.map{|console| console[:Name]}})
    end

end