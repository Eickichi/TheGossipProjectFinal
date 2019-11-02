class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :users
end
