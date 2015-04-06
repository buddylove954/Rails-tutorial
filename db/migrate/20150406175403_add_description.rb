class AddDescription < ActiveRecord::Migration
  def change
  	add_column :projects, :descriptions, :text
  end
end
