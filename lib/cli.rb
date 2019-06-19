
$prompt = TTY::Prompt.new 
require "rainbow"

class CommandLineInterface
  
      def welcome
        system 'clear'
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
      adopt_a_dog_options 
    end

    def dog_by_age
      word=$prompt.select("Please enter age", %w(puppy young adult senior))
      puts Dog.find_by_age(word)
      adopt_a_dog_options 
    end

    def dog_by_gender
      word=$prompt.select("Please enter age", %w(Male Female))
      puts Dog.find_by_gender(word)
      adopt_a_dog_options 
    end
 
    def random_dog_selection
     dog_sample = Dog.all.sample(10)
     dog_sample.each do |dogs|
      puts "#{dogs.name}, #{dogs.age}, #{dogs.gender}, #{dogs.dog_size}"
     end
    end 

    $stories = {
    "See Ricky the pitbull's story: from sleeping in central park to a warm Brooklyn home " => 1,
    "See Classy golden retriever's story: from bait dog in a dumpster to forever home " => 2,
    "See DJ the dachshund's story: from eating out of the sidewalk trash to eating out of the kitchen trash" => 3,
    'Exit' => 0
  }

    def dog_stories
      input = $prompt.select("Select an option:", $stories)
      case input
      when 1
        puts "Adopted this guy from a pound/rescue. He was bought by someone from a breeder and because they didn't realize how much work a dog can be, they left him tied in central park one night. He's a troublemaker, but he's also a sweet boy. When I first met him, he began tugging at my shoelaces and eventually curled up in my lap and went to sleep. I fell in love and adopted him that day."  
      when 2
        puts "I'd been working on convincing my mom to rescue a dog for about six months. She kept saying she knew it was irrational, but that she just couldn't trust them. But then she saw Classy on the local shelter's Facebook page. Classy had been used as a bait dog, then left to die behind a dumpster. After a year in medical foster, she was ready to get a forever home. When we first saw a picture of her, the gash on her neck was so bad we thought she'd been hanged. We officially adopted Classy on Christmas Day, giving her a forever home."
      when 3
        puts "In the seven months we have had him, he has overcome his fear of stairs, squeaky toys, and the dishwasher. He has learned how to interact with other dogs confidently, how to play, and how to follow commands. He is much more confident and happy than he was when we first got him, and we are so happy he is a part of our lives forever."  
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


  def adopt_a_dog_options
    input = $prompt.select("What would you like to do next?", $morechoices)
    case input 
    when 1 
      schedule_meeting
    when 2 
      adopt_a_dog 
    end 
  end 
 
  $morechoices = {
     'Schedule a meeting with a dog' => 1,
     'I am ready to adopt a dog!' => 2,
     'Exit' => 0
   }


    def run 
        welcome 
        greet 
        create_user
        menu
        dog_stories
        adopt_a_dog_options
    end 
    
   
   



    
end