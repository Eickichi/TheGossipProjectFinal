class Gossip < ApplicationRecord
  validates :title, presence: true, length: { in: 3..14 }
  validates :content, presence: true
  belongs_to :author, class_name: "User"
  has_many :join_table_tag_gossips
  has_many :tag, through: :join_table_tag_gossips
end
