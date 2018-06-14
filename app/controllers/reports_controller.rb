class ReportsController < ApplicationController
    
    def index
        @vue = Report.find(1)
    end
end