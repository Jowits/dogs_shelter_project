class RemoveColumnFromCreateDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column(:dogs, :size, :string )
  end
end
