class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :race

      t.timestamps
    end
  end
end
