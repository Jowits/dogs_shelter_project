


 owner = 100.times do 
    Dog.create(
        name: Faker::Creature::Dog.unique.name,
        age: Faker::Creature::Dog.age,
        size: Faker::Creature::Dog.size,
        gender: Faker::Creature::Dog.gender
    )
end
 
dog = 100.times do 
    Owner.create(
        name: Faker::Name.unique.name
    )
end 

def generate_owner
    owner_array= Owner.all.select {|owners| owners.id}
    owner_array[rand(owner_array.length)]
end 

def generate_dog
    owner_array= Dog.all.select{|dogs| dogs.id}
    owner_array[rand(owner_array.length)]
end 
 
10.times do
    Leash.create(dog_id: generate_dog, owner_id: generate_owner)
end


