
FactoryGirl.define do
  factory :character do
    name 'John'
    int 10
    wis 10
    chr 10
    str 10
    dex 10
    con 10
  end

  factory :gear do
    name 'Sword'
    slot '1-handed weapon'
  end

  factory :modifier do
    kind 'hp'
    amount 1
  end
end