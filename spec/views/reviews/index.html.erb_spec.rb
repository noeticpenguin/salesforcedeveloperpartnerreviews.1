require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :user => nil,
        :partner => nil,
        :title => "Title",
        :body => "MyText",
        :engaged_as_app_exchange_partner => false
      ),
      Review.create!(
        :user => nil,
        :partner => nil,
        :title => "Title",
        :body => "MyText",
        :engaged_as_app_exchange_partner => false
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
