class Gear < ActiveRecord::Base
  has_many :modifiers, :as => :modifiable 
  belongs_to :character

  validates :name, :slot, :presence => true

  def stats
    self.modifiers.group_by(&:kind).map {|kind,other| {kind => other.sum(&:amount)}}
  end  
 
  def owner
    Character.find(self.character_id).name
  end

end
