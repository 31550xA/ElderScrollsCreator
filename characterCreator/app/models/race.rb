class Race < ApplicationRecord
    has_many :characters
    
    validates :name, presence: true, length: { minimum: 1 }
    validates :block, presence: true
    validates :heavyArmor, presence: true
    validates :oneHanded, presence: true
    validates :smithing, presence: true
    validates :twoHanded, presence: true
    validates :archery, presence: true
    validates :alchemy, presence: true
    validates :lightArmor, presence: true
    validates :lockPicking, presence: true
    validates :pickPocket, presence: true
    validates :sneak, presence: true
    validates :speech, presence: true
    validates :alteration, presence: true
    validates :conjuration, presence: true
    validates :destruction, presence: true
    validates :enchanting, presence: true
    validates :illusion, presence: true
    validates :restoration, presence: true
end
