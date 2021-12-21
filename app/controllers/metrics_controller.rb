class MetricsController < ApplicationController
    def index
        begin
            @metrics = Metric.all.order(time: :desc)
            render json: @metrics
        rescue => e
            print e
        end
    end 

    def show
        begin
            @metric = Metric.find(params[:id])
            render json: @metric
        rescue => e
            print e
        end
    end 

    def create
        begin
            @metric = Metric.create(
                name: params[:name],
                value: params[:value],
                time: params[:time]
            )
            render json: @metric
        rescue => e
            print e
        end
    end 

    def update
        begin
            @metric = Metric.find(params[:id])
            @metric.update(
                name: params[:name],
                value: params[:value],
                time: params[:time]
            )
            render json: @metric
        rescue => e
            print e
        end
    end 

    def destroy
        begin
            @metrics = Metric.all 
            @metric = Metric.find(params[:id])
            @metric.destroy
            render json: @metrics
        rescue => e
            print e
        end
    end 
end