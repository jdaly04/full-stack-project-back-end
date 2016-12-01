class FundraiserSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :city
end
