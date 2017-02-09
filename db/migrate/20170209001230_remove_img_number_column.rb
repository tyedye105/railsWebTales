class RemoveImgNumberColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column(:contributions, :img_number, :integer)
  end
end
