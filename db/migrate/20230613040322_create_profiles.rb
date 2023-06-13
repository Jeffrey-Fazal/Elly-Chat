class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :gender
      t.string :ethnicity

      t.timestamps
    end
  end
end
