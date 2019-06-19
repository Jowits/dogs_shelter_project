require "rainbow"

def dog_stories
    prompt = TTY::Prompt.new
    system 'clear'
    puts Rainbow("================================================================").color(:mediumpurple).bright
    puts Rainbow("================================================================").color(:mediumpurple).bright
    puts Rainbow(" ♥          ♥   _____ _            _   ♥                 ♥         ").color(:darkorange).bright
    puts Rainbow("               /  ___| |     ♥    (_)       ♥                       ").color(:coral).bright
    puts Rainbow("     ♥         \\ `--.| |_ ___ _ __ _  ___  ___                   ").color(:lightcoral).bright
    puts Rainbow("                 `--.\\__/ _ \\| '__| |/ _ \\/__ |    ♥               ").color(:lightcoral).bright
    puts Rainbow("               /\\__//| | (_) | |  | |  __/\\__ \\               ♥     ").color(:coral).bright
    puts Rainbow("               \\____/\\__\\___/|_|  |_|\\___||___/                      ").color(:darkorange).bright
    puts Rainbow("            ♥                                            ♥ ").color(:darkorange).bright          
    puts Rainbow(" ♥      ♥Read through our heartwarming success stories here.♥          ").color(:purple).bright
    puts Rainbow("          Over  dogs at Paws have found forever homes.")
    puts Rainbow("================================================================").color(:mediumpurple).bright
    puts Rainbow("")
    puts Rainbow("               
                         ,_____ , 
    WOOF!               ,._ ,_. 7\\
          WOOF!         j `-'     /
                        |o_, o    \\
                       .`_y_`-,'   !
                       |/   `, `._ `-,
                       |_     \\  _.'*\\
                         >--,-'`-'*_*'``---.
                         |\\_* _*'-'        '
                        /    `               \\
                       \\.         _ .       /
                         '`._     /   )     /
                          \\ |`-,-|  /c-'7 /
                           ) \\(_,| |   / (_
                          ((_/   ((_;) \\_)))                                      ").color(:dimgray).bright
    puts Rainbow("")
    puts Rainbow("================================================================").color(:mediumpurple).bright
    puts "\n\n"
    

   review = nil;

    while !review

    prompt.on(:keyescape) do
      systemclear("MENU")
      return
    end
    end

    
 

 $stories = {
    "See Ricky the pitbull's story: from sleeping in central park to a warm Brooklyn home " => 1,
    "See Classy golden retriever's story: from bait dog in a dumpster to forever home " => 2,
    "See DJ the dachshund's story: from eating out of the sidewalk trash to eating out of the kitchen trash" => 3,
    'Exit' => 0
  }

      
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