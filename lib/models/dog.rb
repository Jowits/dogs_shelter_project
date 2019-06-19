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
           puts " #{dogs.name} |   #{dogs.age} |   #{dogs.gender} |   #{dogs.dog_size}"
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
      @adopted_dog = Dog.all.find_by_name(dog_name)
      @owner = Owner.last
      Leash.create(dog_id:@adopted_dog.id, owner_id:@owner.id)
      puts "You are now the proud owner of #{dog_name}"
      more_options 
  end 
      
  $choicesforadopt= {
  'Learn more about #{name}' => 1,
  'See more success stories' => 2,
  'Schedule a time for pickup'=> 3
  }

  def more_options 
      input = $prompt.select("Want to learn more?", $choicesforadopt)
         case input 
         when 1 
            learn_more 
         when 2
            success_stories 
         when 3
            schedule_pickup 
       end
     end
     
end

