require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[latitude]"

      assert_select "input[name=?]", "user[longitude]"

      assert_select "input[name=?]", "user[address]"

      assert_select "input[name=?]", "user[title]"
    end
  end
end
