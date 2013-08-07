class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :user, index: true
      t.references :story, index: true

      t.timestamps
    end
  end
end
