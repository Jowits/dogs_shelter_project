class CreateLeashes < ActiveRecord::Migration[5.2]
  def change
    create_table :leashes do |t|
      t.integer :owner_id
      t.integer :dog_id
      
    end
  end
end
