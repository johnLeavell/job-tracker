class Api::V1::JobsController < ApplicationController
    def show
        job = Job.find(params[:id])
    end
  
    def index
        job = Job.all
        render json: job, include: [:user]
    end
  
    def create
        @user = User.find_by(id: params[:user_id])
        @job = Job.new(
            tags: params[:tags], 
            date: params[:date], 
            applied: params[:applied], 
            title: params[:title], 
            compnay_name: params[:compnay_name], 
            user: @user
            )
        if @job.valid?
            @job.save
            render json: @job
        else
            render json: {error: 'Job could not be created'}
        end
    end
  
    def update
        @job = Job.find(params[:id])
        if @job.valid?
            @job.update( 
                tags: params[:tags], 
                date: params[:date], 
                applied: params[:applied], 
                title: params[:title], 
                compnay_name: params[:compnay_name]
                )
            render json: @job
        else
            render json: {error: 'Job could not be updated'}
        end
    end
  
    def destroy
        @job = Job.find(params[:id])
        if @job.valid?
            @job.delete
        else
            render json: {error: 'Job could not be deleted'}
        end
    end 
end
