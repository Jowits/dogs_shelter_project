require "rainbow"
$prompt = TTY::Prompt.new
class CommandLineInterface
    def welcome
        
        puts Rainbow(" ______ ").red
        puts Rainbow("| ___ \ ").orange
        puts Rainbow("| |_/ / __ _  __      __  ___   ").yellow
        puts Rainbow("|  __/ / _` | \ \ /\ / / / __|  ").green
        puts Rainbow("| |   | (_| |  \ V  V /  \__ \  ").aqua
        puts Rainbow("\_|    \__,_|   \_/\_/   |___/  ").purple
        puts Rainbow("===========================================").purple
        puts Rainbow("  _     /)---(\          /~~~\             ").yellow
        puts Rainbow("  \\   (/ . . \)        /  .. \            ").yellow
        puts Rainbow("   \\__)-\(*)/         (_,\  |_)           ").yellow
        puts Rainbow("   \_       (_         /   \@/    /^^^\    ").yellow
        puts Rainbow("   (___/-(____) _     /      \   / . . \   ").yellow
        puts Rainbow("                \\   /  `    |   V\ Y /V   ").yellow
        puts Rainbow("                 \\/  \   | _\    / - \    ").yellow
        puts Rainbow("                  \   /__'|| \\_  |    \   ").yellow
        puts Rainbow("                   \_____)|_).\_).||(__V   ").yellow
   
    end
end