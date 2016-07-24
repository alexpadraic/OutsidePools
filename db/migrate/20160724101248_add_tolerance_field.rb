class AddToleranceField < ActiveRecord::Migration
  def change
  	add_column :drives, :tolerance_in_miles, :integer 
  	add_column :drives, :description, :string 
  end
end
