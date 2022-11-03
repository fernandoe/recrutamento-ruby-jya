class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :event_type
      t.integer :identifier
      t.text :payload

      t.timestamps
    end
  end
end
