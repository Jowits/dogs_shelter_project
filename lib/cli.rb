
$prompt = TTY::Prompt.new 

class CommandLineInterface
  
      def welcome 
        system 'clear'
        puts Rainbow("               ______                                              ").red
        puts Rainbow("              | ___ \                                              ").orange
        puts Rainbow("              | |_/ / __ _  __      __  ___                        ").yellow
        puts Rainbow("              |  __/ / _` | \ \ /\ / / / __|                       ").green
        puts Rainbow("              | |   | (_| |  \ V  V /  \__ \                       ").aqua
        puts Rainbow("              \_|    \__,_|   \_/\_/   |___/                       ").purple
        puts "\n\n"
        puts Rainbow("===================================================================").purple
        puts "\n\n"
        puts Rainbow("              _     /)---(\          /~~~\                         ").yellow
        puts Rainbow("              \\   (/ . . \)        /  .. \                        ").yellow
        puts Rainbow("               \\__)-\(*)/         (_,\  |_)                       ").yellow
        puts Rainbow("               \_       (_         /   \@/    /^^^\                ").yellow
        puts Rainbow("               (___/-(____) _     /      \   / . . \               ").yellow
        puts Rainbow("                            \\   /  `    |   V\ Y /V               ").yellow
        puts Rainbow("                             \\/  \   | _\    / - \                ").yellow
        puts Rainbow("                              \   /__'|| \\_  |    \               ").yellow
        puts Rainbow("                               \_____)|_).\_).||(__V               ").yellow
        puts "\n\n"
      end


    def greet 
        puts "Welcome to Paws! Find your perfect dog match here" 
    end


    def create_user 
        puts "To get started, let's create an account for you"
        puts "Please enter your first name"
        @first_name= gets.chomp
        puts "Please enter your last name"
        @last_name=gets.chomp 
        puts "Lastly, enter your email address"
        @email_address= gets.chomp 
        return Owner.create(first_name:@first_name, last_name: @last_name, email_address: @email_address)
        puts "Thank you #{@first_name} for creating an account. Time to get your paws in the game!"
    end 

    def delete_user
      @first_name.destroy && @last_name.destroy && @email_address.destroy
      puts "Deleted customer #{@first.name}"
    end

    def dog_by_size
      word=$prompt.select("Please enter size", %w(small medium large))
      puts Dog.find_by_size(word)
      
      
    end

    def dog_by_age
      word=$prompt.select("Please enter age", %w(puppy young adult senior))
      puts Dog.find_by_age(word)
      
      
    end

    def dog_by_gender
      word=$prompt.select("Please enter age", %w(Male Female))
      puts Dog.find_by_gender(word)
      
      
    end
 
    def random_dog_selection
     dog_sample = Dog.all.sample(10)
     dog_sample.each do |dogs|
      puts "#{dogs.name}, #{dogs.age}, #{dogs.gender}, #{dogs.dog_size}"
     end
    end 

$choices = {
    'Choose dog by size' => 1,
    'Choose dog by age' => 2,
    'Choose dog by gender' => 3,
    "I'm not picky. Show me some dogs" => 4,
    'See adoption stories here' => 5,
    'Add a dog that needs adopting' => 6,
    'Delete my account' => 7,
    'Turn off the music' => 8,
    'Exit' => 0
  }

  def menu
    while true
      puts "\n\n"
  
      input = $prompt.select("Select an option:", $choices)
  
      case input
        when 1
          dog_by_size
        when 2
            dog_by_age
        when 3
            dog_by_gender 
        when 4
          random_dog_selection 
        when 5
          dog_stories
        when 6
          add_a_dog
        when 7
         delete_account
        
          break
      end
    end
  end

    def run 
        welcome 
        greet 
        create_user
        menu
        dog_by_size
    end 
    
   
   



    
end