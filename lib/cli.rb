$prompt = TTY::Prompt.new 

class CommandLineInterface


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
        when 8
          system("killall afplay")
          $choices.delete('Turn off music')
        when 0
          systemclear("MISCHIEF MANAGED")
          system("killall afplay")
          break
      end
    end
  end

    def run 
        greet 
        create_user
        menu
    end 
    
   
   



    
end