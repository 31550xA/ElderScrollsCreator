class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :block
      t.integer :heavyArmor
      t.integer :oneHanded
      t.integer :smithing
      t.integer :twoHanded
      t.integer :archery
      t.integer :alchemy
      t.integer :lightArmor
      t.integer :lockPicking
      t.integer :pickPocket
      t.integer :sneak
      t.integer :speech
      t.integer :alteration
      t.integer :conjuration
      t.integer :destruction
      t.integer :enchanting
      t.integer :illusion
      t.integer :restoration

      t.timestamps
    end
  end
end
