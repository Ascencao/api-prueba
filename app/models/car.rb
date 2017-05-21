class Car < ApplicationRecord
  belongs_to :garage
  belongs_to :user
end
