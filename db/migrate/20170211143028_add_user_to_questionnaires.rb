class AddUserToQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    add_column :questionnaires, :user, :text
  end
end
