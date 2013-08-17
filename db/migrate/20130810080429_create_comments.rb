class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :diary, index: true
      t.text :comment

      t.timestamps
    end
  end
end
