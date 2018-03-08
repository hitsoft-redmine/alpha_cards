class CreateAlphacards < ActiveRecord::Migration
  def change
    create_table :alphacards do |t|
      t.string :cardtype
      t.integer :position
      t.text :data
      t.string :projectid
    end
  end
end
