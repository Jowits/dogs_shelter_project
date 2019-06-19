class Leash < ActiveRecord::Base
    belongs_to :dog
    belongs_to :owner

    def self.create_dog 
        Leash.create(owner:Owner.last, dog:Dog.adopt_a_dog)
      end 

end
