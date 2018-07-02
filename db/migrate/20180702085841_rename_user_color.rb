class RenameUserColor < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :color, :background_color
  end
end
