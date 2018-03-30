class AddStateToNote < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :state, :integer, index: true
  end
end
