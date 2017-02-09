class FixTheDatabase < ActiveRecord::Migration[5.0]
  def change
    add_column :contributions, :image, :integer
  end
end
