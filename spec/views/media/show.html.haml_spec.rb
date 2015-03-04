require 'rails_helper'

RSpec.describe "media/show", :type => :view do
  before(:each) do
    @medium = assign(:medium, Medium.create!(
      :name => "Name",
      :type => "Type",
      :size => 1,
      :length => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
