class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.string :role
      t.string :user
      t.string :belongs_to
      t.string :course
      t.string :belongs_to

      t.timestamps
    end
  end
end
