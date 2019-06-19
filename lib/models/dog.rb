$prompt = TTY::Prompt.new 
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
           puts " #{dogs.name} | #{dogs.age} | #{dogs.gender} | #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end

  def self.find_by_age(word)
    results = Dog.all.select do |dogs| 
        if dogs.age == word
           puts " #{dogs.name} | #{dogs.age} | #{dogs.gender} | #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end

  def self.find_by_gender(word)
    results = Dog.all.select do |dogs| 
        if dogs.gender == word
           puts " #{dogs.name} | #{dogs.age} | #{dogs.gender} | #{dogs.dog_size}"
        end
    end
     results.sample(10)
  end
  
  def self.see_more_dogs 
  end 

end