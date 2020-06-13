class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :company_name, :tags, :date, :applied, :employer_replies

end
