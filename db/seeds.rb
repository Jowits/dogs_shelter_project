


 100.times do 
    Dog.create(
        name: Faker::Creature::Dog.unique.name,
        age: Faker::Creature::Dog.age,
        size: Faker::Creature::Dog.size,
        gender: Faker::Creature::Dog.gender
    )
end
 
100.times do 
    Owner.create(
        name: Faker::Name.unique.name
    )
end 


 
20.times do
    Leash.create(dog_id: Dog.all.to_a.sample.id, owner_id: Owner.all.to_a.sample.id)
end


