class AddDiagnosisToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :diagnosis, :string
  end
end
