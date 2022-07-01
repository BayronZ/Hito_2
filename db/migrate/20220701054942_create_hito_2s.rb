class CreateHito2s < ActiveRecord::Migration[7.0]
  def change
    create_table :hito_2s do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
