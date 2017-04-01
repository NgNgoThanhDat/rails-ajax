require 'rails_helper'

RSpec.describe "ponies/edit", type: :view do
  before(:each) do
    @pony = assign(:pony, Pony.create!(
      :name => "MyString",
      :profession => "MyText"
    ))
  end

  it "renders the edit pony form" do
    render

    assert_select "form[action=?][method=?]", pony_path(@pony), "post" do

      assert_select "input#pony_name[name=?]", "pony[name]"

      assert_select "textarea#pony_profession[name=?]", "pony[profession]"
    end
  end
end
