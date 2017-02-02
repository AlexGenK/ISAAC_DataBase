class ChangeColumns < ActiveRecord::Migration[5.0]
  def change
    change_column :questionnaires, :a_3, :integer, :default => 0
    change_column :questionnaires, :a_4, :integer, :default => 0
    change_column :questionnaires, :b_5, :integer, :default => 0
    change_column :questionnaires, :c_4, :integer, :default => 0
    change_column :questionnaires, :c_6, :integer, :default => 0
  end
end
