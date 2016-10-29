require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :user => nil,
      :partner => nil,
      :title => "MyString",
      :body => "MyText",
      :engaged_as_app_exchange_partner => false
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "input#review_partner_id[name=?]", "review[partner_id]"

      assert_select "input#review_title[name=?]", "review[title]"

      assert_select "textarea#review_body[name=?]", "review[body]"

      assert_select "input#review_engaged_as_app_exchange_partner[name=?]", "review[engaged_as_app_exchange_partner]"
    end
  end
end
