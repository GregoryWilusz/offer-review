class Offer < ApplicationRecord
  belongs_to :client, class_name: User.to_s
  belongs_to :salesman
end
