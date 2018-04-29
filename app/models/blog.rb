class Blog < ApplicationRecord
  belongs_to :User, optional: true

  validates :title, presence: true
  validates :message, presence: true
  
end
