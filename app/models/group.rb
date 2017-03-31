class Group < ApplicationRecord
  validates :title,presence: true
  belongs_to :user
  has_many :posts
  has_many :group_relations
  has_many :members, through: :users, source: :group_relations
end
