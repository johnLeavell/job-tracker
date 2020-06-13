class Api::V1::JobsTagsController < ApplicationController
    def index
        notesTag = JobsTag.all
        render json: jobsTag, include: [:note, :tag]
    end
end
