require 'rails_helper'

RSpec.describe "partners/index", type: :view do
  before(:each) do
    assign(:partners, [
      Partner.create!(
        :website => "Website",
        :name => "Name",
        :sells_app_exchange_apps => false,
        :description => "MyText"
      ),
      Partner.create!(
        :website => "Website",
        :name => "Name",
        :sells_app_exchange_apps => false,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of partners" do
    render
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
