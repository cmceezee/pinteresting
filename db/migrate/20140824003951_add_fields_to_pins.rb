class AddFieldsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :private, :boolean, default: false
    add_column :pins, :preference, :string
  end
end
