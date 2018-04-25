class Workout < ApplicationRecord
  belongs_to :User, optional: true
end
