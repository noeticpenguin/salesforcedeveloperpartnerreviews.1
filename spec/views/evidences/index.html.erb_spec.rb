require 'rails_helper'

RSpec.describe "evidences/index", type: :view do
  before(:each) do
    assign(:evidences, [
      Evidence.create!(
        :review => nil,
        :image_url => "Image Url",
        :code => "MyText",
        :title => "Title",
        :user => nil
      ),
      Evidence.create!(
        :review => nil,
        :image_url => "Image Url",
        :code => "MyText",
        :title => "Title",
        :user => nil
      )
    ])
  end

  it "renders a list of evidences" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
