require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[latitude]"

      assert_select "input[name=?]", "user[longitude]"

      assert_select "input[name=?]", "user[address]"

      assert_select "input[name=?]", "user[title]"
    end
  end
end
