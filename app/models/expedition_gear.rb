class ExpeditionGear < ApplicationRecord
    belongs_to :expedition
    belongs_to :gear
end
