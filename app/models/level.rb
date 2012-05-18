class Level < ActiveRecord::Base
  has_many :modifiers, :as => :modifiable
  belongs_to :character

  validates_presence_of :class

  def stats
      self.modifiers.group_by(&:kind).map {|kind,other| {kind => other.sum(&:amount)}}
  end 
end
