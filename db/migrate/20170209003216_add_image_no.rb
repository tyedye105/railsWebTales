class AddImageNo < ActiveRecord::Migration[5.0]
  def change
    add_column(:images, :img_no, :integer)
  end
end
