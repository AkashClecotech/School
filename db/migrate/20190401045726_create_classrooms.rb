class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.belongs_to :student, index: true
      t.belongs_to :teacher, index: true
      t.timestamps
    end
  end
end
