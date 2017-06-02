class AddPhotoToStudio < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :photo, :string
  end
end
