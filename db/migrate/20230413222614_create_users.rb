class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
