class ContactPhone < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, length: {maximum: 50}
    validates :phone, presence: true, uniqueness: true, length: {maximum: 11}
end

