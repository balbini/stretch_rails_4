class Blog < ApplicationRecord
  belongs_to :User, optional: true
end
