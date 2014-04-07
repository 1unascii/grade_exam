require 'spec_helper'

describe "exams/show" do
  before(:each) do
    @exam = assign(:exam, stub_model(Exam,
      :student_name => "Student Name",
      :answers => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Student Name/)
    rendered.should match(/MyText/)
  end
end
