class Contact < ApplicationRecord
  has_many :addresses, foreign_key: :contact_id
end
