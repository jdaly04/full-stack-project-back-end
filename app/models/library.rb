class Library < ActiveRecord::Base
  belongs_to :user, inverse_of: :libraries
  belongs_to :fundraiser, inverse_of: :libraries
  validates :name, uniqueness: { scope: [:user] }
  validates :name, length: { maximum: 20 }
  validates :name, presence: true
end
