class AddColorToNote < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :color, :string
  end
end
