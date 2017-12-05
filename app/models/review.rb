class Review < ApplicationRecord
    belongs_to :expedition, optional: true
end
