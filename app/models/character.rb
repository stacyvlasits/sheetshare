class Character < ActiveRecord::Base
  has_many :gears
#  has_many :levels
#  has_many :modifiers, :as => :modifiable, :through => :levels  
  has_many :modifiers, :as => :modifiable, :through => :gears


  validates :name, :presence => true
  validates_numericality_of :str, :int, :wis, :dex, :con, :chr, 
    :greater_than_or_equal_to => 1, :only_integer => true

  stats = ["hp", "bab", "ac"]
  Skills = { :"Appraise" => 'Int', :"Autohypnosis" => 'Wis', :"Balance" => 'Dex', :"Bluff" => 'Cha', :"Climb" => 'Str', :"Concentration" => 'Con', :"Control Shape" => 'Wis', :"Craft" => 'Int', :"Decipher Script" => 'Int', :"Diplomacy" => 'Cha', :"Disable Device" => 'Int', :"Disguise" => 'Cha', :"Escape Artist" => 'Dex', :"Forgery" => 'Int', :"Gather Information" => 'Cha', :"Handle Animal" => 'Cha', :"Heal" => 'Wis', :"Hide" => 'Dex', :"Intimidate" => 'Cha', :"Jump" => 'Str', :"Knowledge" => 'Int', :"Listen" => 'Wis', :"Move Silently" => 'Dex', :"Open Lock" => 'Dex', :"Perform" => 'Cha', :"Psicraft" => 'Int', :"Profession" => 'Wis', :"Ride" => 'Dex', :"Search" => 'Int', :"Sense Motive" => 'Wis', :"Sleight of Hand" => 'Dex', :"Speak Language" => 'none', :"Spellcraft" => 'Int', :"Spot" => 'Wis', :"Survival" => 'Wis', :"Swim" => 'Str', :"Tumble" => 'Dex', :"Use Magic Device" => 'Cha', :"Use Psionic Device" => 'Cha', :"Use Rope" => 'Dex'}

  skills = Skills.keys

  (skills + stats).each do |method_name|
     method_name = method_name.to_s.downcase.gsub(/\s/,'_')
     define_method method_name do 
      self.modifiers.where(:kind => method_name).sum(:amount)  
    end    
  end
  
end
