class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.integer :img_number
      t.string :content
      t.string :username
      t.integer :tale_id
      t.timestamps
    end
  end
end
