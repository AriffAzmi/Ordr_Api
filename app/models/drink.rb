class Drink < ActiveRecord::Base
    
    validates :name,  presence: true, length: { maximum: 50 }
    validates :qty,  presence: true, length: { maximum: 10 }
end
