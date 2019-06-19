

$prompt = TTY::Prompt.new 
$font = TTY::Font.new(:doom)
require "rainbow"

class CommandLineInterface

      
  
      def welcome
        system 'clear'

        play_music
        puts Rainbow("================================================================").color(:mediumpurple).bright
        puts Rainbow("================================================================").color(:mediumpurple).bright
        puts Rainbow("                ______                                              ").color(:darkorange).bright.blink
        puts Rainbow("                | ___ \\                                              ").color(:coral).bright.blink
        puts Rainbow("                | |_/ / __ _  __      __  ___                        ").color(:lightcoral).bright.blink
        puts Rainbow("                |  __/ / _` | \\ \\ /\\ / / / __|                       ").color(:lightcoral).bright.blink
        puts Rainbow("                | |   | (_| |  \\ V  V /  \\__ \\                       ").color(:coral).bright.blink
        puts Rainbow("                \\_|    \\__,_|   \\_/\\_/   |___/                       ").color(:darkorange).bright.blink
        puts Rainbow("")
        puts Rainbow("       ♥Welcome to Paws! Find your perfect dog match here♥").color(:purple).bright
        puts Rainbow("")
        puts Rainbow("================================================================").color(:mediumpurple).bright
        puts Rainbow("")
        puts Rainbow("            _    /)---(\\           /~~~\\                         ").color(:sandybrown).bright
        puts Rainbow("             \\  (/ . . \\)         /  .. \\                        ").color(:sandybrown).bright
        puts Rainbow("              \\__)-\\(*)/         (_,\\  |_)                       ").color(:sandybrown).bright
        puts Rainbow("              \\_       (_         /   \\@/  //^^^\\\                ").color(:sandybrown).bright
        puts Rainbow("              (___/-(____) _ex     /      \\/ . . \\               ").color(:sandybrown).bright
        puts Rainbow("                           \\   /  `    |   V\\ Y /V               ").color(:sandybrown).bright
        puts Rainbow("                            \\/  \\   | _\\    / - \\                ").color(:sandybrown).bright
        puts Rainbow("                             \\   /__'|| \\_  |    \\               ").color(:sandybrown).bright
        puts Rainbow("                              \\_____)|_).\\_).||(__V               ").color(:sandybrown).bright
        puts Rainbow("")
        puts Rainbow("================================================================").color(:mediumpurple).bright
        puts Rainbow("================================================================").color(:mediumpurple).bright
        puts "\n\n"
      end
      


    
      def play_music
        pid = fork{ exec 'afplay', "who-let-the-dogs-out-ringtone.mp3" }
      end

    def create_user 
        puts Rainbow("To get started, let's create an account for you").color(:lightcoral).bright
        puts Rainbow("Please enter your first name").color(:lightcoral).bright
        @first_name= gets.chomp
        puts Rainbow("Please enter your last name").color(:lightcoral).bright
        @last_name=gets.chomp 
        puts Rainbow("Lastly, enter your email address").color(:lightcoral).bright
        @email_address= gets.chomp 
        return Owner.create(first_name:@first_name, last_name: @last_name, email_address: @email_address)
        puts "Thank you #{@first_name} for creating an account. Time to get your paws in the game!"
    end 

    def delete_account
      puts  Rainbow("Please enter your email address: ").color(:lightcoral).bright
      user_email = gets.chomp
      @owner = Owner.find_by(email_address: user_email)
      if user_email == @email_address
         @owner.destroy 
         puts "Your account was deleted"
      end
    end

    def dog_by_size
      word=$prompt.select(Rainbow("Please enter size").color(:lightcoral).bright, %w(small medium large))
      puts Dog.find_by_size(word)
      adopt_a_dog_options 
    end

    def dog_by_age
      word=$prompt.select(Rainbow("Please enter age").color(:lightcoral).bright, %w(puppy young adult senior))
      puts Dog.find_by_age(word)
      adopt_a_dog_options 
    end

    def dog_by_gender
      word=$prompt.select(Rainbow("Please enter age").color(:lightcoral).bright, %w(Male Female))
      puts Dog.find_by_gender(word)
      adopt_a_dog_options 
    end
 
    def random_dog_selection
     dog_sample = Dog.all.sample(10)
     dog_sample.each do |dogs|
      puts " #{dogs.name} |   #{dogs.age} |   #{dogs.gender} |   #{dogs.dog_size}"
     end
    end 

    def add_a_dog
      puts "We are confident that we can find a home for the dog you've found in need.What is the dogs name?"
      name = gets.chomp
      size = $prompt.select("What is the dog's size? Please select from the following", %w(small medium large))
      gender=$prompt.select("What is the dog's gender? Please select from the following", %w(Male Female))
      age=$prompt.select("What is the dog's age? Please select from the following", %w(puppy young senior adult))
      puts Dog.create(name:name, age:age, dog_size:size, gender:gender) 
      puts "#{name} is now up for adoption!"
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
  
      input = $prompt.select(Rainbow("Select an option:").color(:lightcoral), $choices)
  
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


  def adopt_a_dog_options
    input = $prompt.select(Rainbow("What would you like to do next?").color(:lightcoral), $morechoices)
    case input 
    when 1 
      schedule_meeting
    when 2 
      adopt_a_dog
    end 
  end 

def adopt_a_dog
  puts "We are so happy for you and your new family member! Please write the name of the dog you'd like to adopt"
  dog_name = gets.chomp
  Dog.adopt_a_dog(dog_name)
  # congrats_method 
end 

  def schedule_meeting
    day_choices = %w(Monday Tuesday Wednesday Thursday Friday Saturday)
      $prompt.multi_select("Time to meet your match :) Pick 2 days of the week that work best for you", day_choices)
    time_choices = %w(Morning Afternoon Evening)
      $prompt.multi_select("What time works best for you?", time_choices)
    puts "Thank you for your response. We will be in touch shortly to finalise your meeting date and time"
end 
 
  $morechoices = {
     'Schedule a meeting with a dog' => 1,
     'I am ready to adopt a dog!' => 2,
     'Exit' => 0
   }


    def run 
      welcome 
      create_user
      menu
    end 
    
   
   



    
end