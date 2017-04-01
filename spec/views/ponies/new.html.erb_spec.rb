require 'rails_helper'

RSpec.describe "ponies/new", type: :view do
  before(:each) do
    assign(:pony, Pony.new(
      :name => "MyString",
      :profession => "MyText"
    ))
  end

  it "renders new pony form" do
    render

    assert_select "form[action=?][method=?]", ponies_path, "post" do

      assert_select "input#pony_name[name=?]", "pony[name]"

      assert_select "textarea#pony_profession[name=?]", "pony[profession]"
    end
  end
end
