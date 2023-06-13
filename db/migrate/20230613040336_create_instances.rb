class CreateInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :instances do |t|
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true
      t.references :bot, foreign_key: true

      t.timestamps
    end
  end
end
