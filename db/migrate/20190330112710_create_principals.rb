class CreatePrincipals < ActiveRecord::Migration[6.0]
  def change
    create_table :principals do |t|
      t.string :principal
      t.integer :school_id
      t.timestamps
    end
  end
end
