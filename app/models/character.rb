class Character < ActiveRecord::Base
  has_many :gears
#  has_many :levels
#  has_many :modifiers, :as => :modifiable, :through => :levels  
  has_many :modifiers, :as => :modifiable, :through => :gears


  validates :name, :presence => true
  validates_numericality_of :str, :int, :wis, :dex, :con, :chr, 
    :greater_than_or_equal_to => 1, :only_integer => true

  skills = ["hp", "bab", "ac"]


  skills.each do |method_name|
    define_method method_name do 
      self.modifiers.where(:kind => method_name).sum(:amount)  
    end    
  end
  
  # def hp
  #   self.modifiers.current("hp").sum(:amount)
  # end

end
