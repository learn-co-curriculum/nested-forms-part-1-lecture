class Gear < ApplicationRecord
    has_many :expedition_gears
    has_many :expeditions, through: :expedition_gears
end
