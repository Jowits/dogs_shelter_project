$prompt = TTY::Prompt.new 
$font = TTY::Font.new(:doom)
require "rainbow"
class Dog < ActiveRecord::Base

    has_many :leashes
    has_many :owners, through: :leashes

 

def self.remove
        a = Dog.all.select{|inst| inst.dog_size == "extra large"}
        a.each{|inst| inst.update(dog_size: "medium")}
end
 
 
  def self.find_by_size(word)
    results = Dog.all.select do |dogs| 
        if dogs.dog_size == word
           puts " #{dogs.name}   |    #{dogs.age}  |     #{dogs.gender} |     #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end

  def self.find_by_age(word)
    results = Dog.all.select do |dogs| 
        if dogs.age == word
           puts " #{dogs.name} |   #{dogs.age} |   #{dogs.gender} |   #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end

  def self.find_by_gender(word)
    results = Dog.all.select do |dogs| 
        if dogs.gender == word
           puts " #{dogs.name} |   #{dogs.age} |   #{dogs.gender} |   #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end

  

def self.adopt_a_dog(dog_name)
   dogs_name = Dog.all.map {|dogs| dogs.name}
      if dogs_name.include?(dog_name)==true 
      @adopted_dog = Dog.all.find_by_name(dog_name)
      @owner = Owner.last
      Leash.create(dog_id:@adopted_dog.id, owner_id:@owner.id)
      puts "You are now the proud owner of #{dog_name}"
    else 
      puts "Oops! We don't have that dog here. Please try again."
      dog_name_new = gets.chomp 
      self.adopt_a_dog(dog_name_new)
   end 
end 
      
  
     
end


