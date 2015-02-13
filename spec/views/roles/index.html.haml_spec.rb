require 'rails_helper'

RSpec.describe "roles/index", :type => :view do
  before(:each) do
    assign(:roles, [
      Role.create!(
        :user_id => 1,
        :name => "Name"
      ),
      Role.create!(
        :user_id => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
