class Modifier < ActiveRecord::Base
  belongs_to :character

  scope :current, lambda {|kind| where(:kind == kind)}

  validates :kind, :amount, :presence => true
  validates_numericality_of :amount, :only_integer => true

end
