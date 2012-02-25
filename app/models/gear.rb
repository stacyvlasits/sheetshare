class Gear < ActiveRecord::Base
  has_many :modifiers, :as => :modifiable 
  belongs_to :character

  validates :name, :slot, :presence => true
  
end
