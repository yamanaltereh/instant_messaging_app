class Reading < ApplicationRecord
  belongs_to :message
  belongs_to :user
end
