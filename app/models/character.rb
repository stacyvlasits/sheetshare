class Character < ActiveRecord::Base
	has_many :levels
  
  validates :name, :presence => true
  validates_numericality_of :str , :int, :wis, :dex, :con, :chr, 
    :greater_than_or_equal_to => 1, :only_integer => true
  
end
