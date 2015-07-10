class Food < ActiveRecord::Base
    
    validates :foodlist,  presence: true, length: { maximum: 50 }
    
end
