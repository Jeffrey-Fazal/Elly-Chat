class CreateBots < ActiveRecord::Migration[5.2]
  def change
    create_table :bots do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :personality
      t.string :avatar

      t.timestamps
    end
  end
end
