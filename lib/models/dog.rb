$prompt = TTY::Prompt.new(active_color: :cyan)
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
         if dogs.dog_size == word.downcase
         puts $prompt.multiline(" #{Rainbow(dogs.name).color(:mediumpurple)}   -   #{ dogs.age }    -   #{ dogs.gender }")
           
            
         end
      
      end
   
   end

   def self.find_by_age(word)
      results = Dog.all.select do |dogs| 
         if dogs.age == word
            puts $prompt.multiline(" #{Rainbow(dogs.name).color(:mediumpurple)}  -   #{dogs.gender}   -    #{dogs.dog_size}")
         end
      end
      
   end

   def self.find_by_gender(word)
      results = Dog.all.select do |dogs| 
         if dogs.gender == word 
            puts $prompt.multiline(" #{Rainbow(dogs.name).color(:mediumpurple)}  -   #{dogs.age}   -    #{dogs.dog_size}")
         end
      end
      
   end

   
   def self.cheer_music
      fork{ exec 'afplay', "cheering-crowd.mp3" }
   end
   

   def self.adopt_a_dog(dog_name)
      dogs_name = Dog.all.map {|dogs| dogs.name}
         if dogs_name.include?(dog_name)==true 
         @adopted_dog = Dog.all.find_by_name(dog_name)
         @owner = Owner.last
         Leash.create(dog_id:@adopted_dog.id, owner_id:@owner.id)
         puts "\n\n"
         Dog.cheer_music
         puts "You are now the proud owner of #{dog_name}!!!"
         puts @owner.dogs.first.funny_facts
         puts "\n\n"
      else 
         puts "Oops! We don't have that dog here. Please try again."
         dog_name_new = gets.chomp 
         self.adopt_a_dog(dog_name_new)
      end 
   end 

   

   

   def funny_facts
      mix_facts = ["I love to cuddle, you can walk me without a leash and I will follow. Unfortunately, sometimes my farts are bit smelly." , 
         "I like long walks and will love you forever if you rub my belly, I eat everything in sight ", 
         "I get along with other dogs but when I am feeling antisocial I sleep all day. If I'm upset I will eat your shoes.", 
         "I love babies and will keep your home safe. In return, I expect a treat after I poop outside.",
         "I will find and fetch the remote control for you. You probably shouldn't let me near your trash, it will end up all over the flat floor."]
      mix_facts.sample
   end

end


