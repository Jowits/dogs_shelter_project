class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name 
      t.string :age
      t.string :size 
      t.string :gender
    end
  end
end
