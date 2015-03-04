require 'rails_helper'

RSpec.describe "media/edit", :type => :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :name => "MyString",
      :type => "",
      :size => 1,
      :length => 1
    ))
  end

  it "renders the edit medium form" do
    render

    assert_select "form[action=?][method=?]", medium_path(@medium), "post" do

      assert_select "input#medium_name[name=?]", "medium[name]"

      assert_select "input#medium_type[name=?]", "medium[type]"

      assert_select "input#medium_size[name=?]", "medium[size]"

      assert_select "input#medium_length[name=?]", "medium[length]"
    end
  end
end
