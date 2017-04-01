require 'rails_helper'

RSpec.describe "ponies/index", type: :view do
  before(:each) do
    assign(:ponies, [
      Pony.create!(
        :name => "Name",
        :profession => "MyText"
      ),
      Pony.create!(
        :name => "Name",
        :profession => "MyText"
      )
    ])
  end

  it "renders a list of ponies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
