require 'spec_helper'

describe "exams/new" do
  before(:each) do
    assign(:exam, stub_model(Exam,
      :student_name => "MyString",
      :answers => "MyText"
    ).as_new_record)
  end

  it "renders new exam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exams_path, "post" do
      assert_select "input#exam_student_name[name=?]", "exam[student_name]"
      assert_select "textarea#exam_answers[name=?]", "exam[answers]"
    end
  end
end
