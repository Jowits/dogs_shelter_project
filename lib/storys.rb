require "rainbow"
$prompt = TTY::Prompt.new(active_color: :cyan)

def dog_stories
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

    $prompt.on(:keyescape) do
      systemclear("MENU")
      return
    # end
    end
    story_text 
    
    end

   

  end   
