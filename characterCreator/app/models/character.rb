class Character < ApplicationRecord
    has_one :skillset
    validates :name, presence: true, length: { minimum: 1 }
    validates :gender, presence: true
    validates :race, presence: true
end
