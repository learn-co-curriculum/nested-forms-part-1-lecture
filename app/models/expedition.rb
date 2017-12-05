class Expedition < ApplicationRecord
    validates :name, :description, :length, :difficulty, presence: true

    has_many :expedition_gears
    has_many :gear, through: :expedition_gears
    has_many :reviews

    def gear_attributes=(gear_attributes)
        gear_attributes.each do |attributes|
            if !attributes[:name].empty?
                gear = Gear.find_or_initialize_by(name: attributes[:name])
                if !self.gear.include?(gear)
                    self.gear << gear
                end
            end
        end
    end

    def review_attributes=(review_attributes)
        if review_attributes[:content].empty?
            self.errors.add(:review_content, "must be filled in")
        end

        if review_attributes[:rating] < 1 || review_attributes[:rating] > 5
            self.errors.add(:review_rating, "must be between 1-5")
        end

        if self.errors.messages.empty?
            self.reviews.build(review_attributes)
        end
    end

    def average_rating
        average_rating = self.reviews.average(:rating).to_f.round(1)
        if average_rating < 1
            "This has not yet been rated!"
        else
            average_rating
        end
    end
end