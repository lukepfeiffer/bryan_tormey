class AddPriorityNumberToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :priority_number, :integer
  end
end
