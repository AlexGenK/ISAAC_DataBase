class AddDopColumnsToQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    add_column :questionnaires, :dop_1, :integer, :default => 1
    add_column :questionnaires, :dop_2_1, :boolean, :default => false
    add_column :questionnaires, :dop_2_2, :boolean, :default => false
    add_column :questionnaires, :dop_2_3, :boolean, :default => false
    add_column :questionnaires, :dop_2_4, :boolean, :default => false
    add_column :questionnaires, :dop_2_5, :boolean, :default => false
    add_column :questionnaires, :dop_2_6, :boolean, :default => false
    add_column :questionnaires, :dop_3, :integer, :default => 3
    add_column :questionnaires, :dop_4, :integer, :default => 2
    add_column :questionnaires, :dop_5, :integer, :default => 3
    add_column :questionnaires, :dop_6_1, :boolean, :default => false
    add_column :questionnaires, :dop_6_2, :boolean, :default => false
    add_column :questionnaires, :dop_6_3, :boolean, :default => false
    add_column :questionnaires, :dop_6_4, :boolean, :default => false
    add_column :questionnaires, :dop_6_5, :boolean, :default => false
    add_column :questionnaires, :dop_7_1, :boolean, :default => false
    add_column :questionnaires, :dop_7_2, :boolean, :default => false
    add_column :questionnaires, :dop_7_3, :boolean, :default => false
    add_column :questionnaires, :dop_7_4, :boolean, :default => false
    add_column :questionnaires, :dop_7_5, :boolean, :default => false
    add_column :questionnaires, :dop_8_1, :boolean, :default => false
    add_column :questionnaires, :dop_8_2, :boolean, :default => false
    add_column :questionnaires, :dop_8_3, :boolean, :default => false
    add_column :questionnaires, :dop_8_4, :boolean, :default => false
    add_column :questionnaires, :dop_8_5, :boolean, :default => false
    add_column :questionnaires, :dop_9_1, :boolean, :default => false
    add_column :questionnaires, :dop_9_2, :boolean, :default => false
    add_column :questionnaires, :dop_9_3, :boolean, :default => false
    add_column :questionnaires, :dop_9_4, :boolean, :default => false
    add_column :questionnaires, :dop_10_1, :boolean, :default => false
    add_column :questionnaires, :dop_10_2, :boolean, :default => false
    add_column :questionnaires, :dop_10_3, :boolean, :default => false
    add_column :questionnaires, :dop_10_4, :boolean, :default => false
    add_column :questionnaires, :dop_10_5, :boolean, :default => false
    add_column :questionnaires, :dop_10_6, :boolean, :default => false
    add_column :questionnaires, :dop_11, :integer, :default => 1
    add_column :questionnaires, :dop_12, :integer, :default => 1
    add_column :questionnaires, :dop_13, :integer, :default => 0
    add_column :questionnaires, :dop_14, :integer, :default => 0
    add_column :questionnaires, :dop_15, :integer, :default => 1
  end
end
