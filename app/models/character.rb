class Character < ActiveRecord::Base
  has_many :gears
#  has_many :levels
#  has_many :modifiers, :as => :modifiable, :through => :levels  
  has_many :modifiers, :as => :modifiable, :through => :gears


  validates :name, :presence => true
  validates_numericality_of :str, :int, :wis, :dex, :con, :chr, 
    :greater_than_or_equal_to => 1, :only_integer => true


  def hp
    self.modifiers.current("hp").sum(:amount)
  end

end
