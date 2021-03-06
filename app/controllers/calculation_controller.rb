class CalculationController < ApplicationController
    def index
        begin
            if params[:averageperminute]
                @metrics = Metric.where('time > ?', 1.minutes.ago)
                @average = @metrics.average(:value)
                render :json => @average
            end
            if params[:averageperhour]
                @metrics = Metric.where('time > ?', 1.hours.ago)
                @average = @metrics.average(:value)
                render :json => @average
            end
            if params[:averageperday] 
                @metrics = Metric.where('time > ?', 1.days.ago)
                @average = @metrics.average(:value)
                render :json => @average
            end
        rescue => e
            print e
        end
    end
end