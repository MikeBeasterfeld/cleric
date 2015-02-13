require 'rails_helper'

RSpec.describe "roles/new", :type => :view do
  before(:each) do
    assign(:role, Role.new(
      :user_id => 1,
      :name => "MyString"
    ))
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input#role_user_id[name=?]", "role[user_id]"

      assert_select "input#role_name[name=?]", "role[name]"
    end
  end
end
