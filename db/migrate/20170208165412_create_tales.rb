class CreateTales < ActiveRecord::Migration[5.0]
  def change
    create_table :tales do |t|
      t.string :title
      t.timestamps
    end
  end
end
