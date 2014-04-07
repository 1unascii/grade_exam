require 'spec_helper'

describe "exams/index" do
  before(:each) do
    assign(:exams, [
      stub_model(Exam,
        :student_name => "Student Name",
        :answers => "MyText"
      ),
      stub_model(Exam,
        :student_name => "Student Name",
        :answers => "MyText"
      )
    ])
  end

  it "renders a list of exams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Student Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
