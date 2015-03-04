require 'rails_helper'

RSpec.describe "media/index", :type => :view do
  before(:each) do
    assign(:media, [
      Medium.create!(
        :name => "Name",
        :type => "Type",
        :size => 1,
        :length => 2
      ),
      Medium.create!(
        :name => "Name",
        :type => "Type",
        :size => 1,
        :length => 2
      )
    ])
  end

  it "renders a list of media" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
