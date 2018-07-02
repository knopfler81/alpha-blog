class AddNavColorToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :navbar_color, :string
  end
end
