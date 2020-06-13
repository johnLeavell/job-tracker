class Job < ApplicationRecord
    has_many :tags, through: :jobs_tags
    belongs_to :user
end
