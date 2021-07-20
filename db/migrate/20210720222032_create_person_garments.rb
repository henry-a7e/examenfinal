class CreatePersonGarments < ActiveRecord::Migration[6.1]
  def change
    create_table :person_garments do |t|
      t.references :person, null: false, foreign_key: true
      t.references :transmission, null: false, foreign_key: true
      t.references :garment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
