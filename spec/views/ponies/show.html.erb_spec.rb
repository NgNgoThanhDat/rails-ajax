require 'rails_helper'

RSpec.describe "ponies/show", type: :view do
  before(:each) do
    @pony = assign(:pony, Pony.create!(
      :name => "Name",
      :profession => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
