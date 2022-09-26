class Contact < ApplicationRecord
  validates :name, :email ,:phone, presence: true
end
