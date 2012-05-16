class Gear < ActiveRecord::Base
  has_many :modifiers, :as => :modifiable 
  belongs_to :character

  validates :name, :slot, :presence => true
  
  def stats
    stats = []
    self.modifiers.group_by(&:kind).each {|kind,other| stats << "#{kind}:  #{other.sum(&:amount)}"}
    stats
  end
  def owner
    Character.find(self.character_id).name
  end

end
