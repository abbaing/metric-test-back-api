class MetricsController < ApplicationController
    def index
        @metrics = Metric.all.order(time: :desc)
        render json: @metrics
    end 

    def show
        @metric = Metric.find(params[:id])
        render json: @metric
    end 

    def create
        @metric = Metric.create(
            name: params[:name],
            value: params[:value],
            time: params[:time]
        )
        render json: @metric
    end 

    def update
        @metric = Metric.find(params[:id])
        @metric.update(
            name: params[:name],
            value: params[:value],
            time: params[:time]
        )
        render json: @metric
    end 

    def destroy
        @metrics = Metric.all 
        @metric = Metric.find(params[:id])
        @metric.destroy
        render json: @metrics
    end 
end