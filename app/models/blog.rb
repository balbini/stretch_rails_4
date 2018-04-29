class Blog < ApplicationRecord
  belongs_to :User, optional: true

  validates :article, presence: true
  validates :content, presence: true

end
