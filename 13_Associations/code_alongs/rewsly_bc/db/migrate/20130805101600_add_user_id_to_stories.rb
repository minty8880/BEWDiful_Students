class AddUserIdToStories < ActiveRecord::Migration
  def change
    # add_reference :stories, :user, index: true
    add_column :stories, :user_id, :integer
  end
end
