class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_tag_gossips
  has_many :tags, through: :join_tag_gossips
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
