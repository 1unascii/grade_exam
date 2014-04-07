class CreateExams < ActiveRecord::Migration
  def change
  	#drop_table :exams
    create_table :exams do |t|
      t.string :student_name
      t.text :answers

      t.timestamps
    end
  end
end
