require 'rails_helper'

RSpec.describe "roles/show", :type => :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :user_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
  end
end
