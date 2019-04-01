class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.references :bookable, polymorphic: true

      t.timestamps
    end
  end
end
