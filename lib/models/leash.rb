require "rainbow"
class Leash < ActiveRecord::Base
    belongs_to :dog
    belongs_to :owner


    def self.puts_name_and_owner 
        Leash.all.map do |leash|
         "♥ #{Rainbow(leash.owner.first_name).color(:lightcoral)} adopted #{Rainbow(leash.dog.name).color(:lightcoral)} ♥"
    end 
end 
end
