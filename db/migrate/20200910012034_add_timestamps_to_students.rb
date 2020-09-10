class AddTimestampsToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :created_at, :datetime, null: false
    add_column :students, :updated_at, :datetime, null: false
  end
end
