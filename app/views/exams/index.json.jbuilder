json.array!(@exams) do |exam|
  json.extract! exam, :id, :student_name, :answers
  json.url exam_url(exam, format: :json)
end
