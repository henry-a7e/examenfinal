class CreateTransmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :transmissions do |t|
      t.datetime :date
      t.integer :program_number

      t.timestamps
    end
  end
end
