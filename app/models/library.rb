class Library < ActiveRecord::Base
  belongs_to :user, inverse_of: :libraries
  belongs_to :fundraiser, inverse_of: :libraries
end
