require 'rails_helper'

RSpec.describe "partners/edit", type: :view do
  before(:each) do
    @partner = assign(:partner, Partner.create!(
      :website => "MyString",
      :name => "MyString",
      :sells_app_exchange_apps => false,
      :description => "MyText"
    ))
  end

  it "renders the edit partner form" do
    render

    assert_select "form[action=?][method=?]", partner_path(@partner), "post" do

      assert_select "input#partner_website[name=?]", "partner[website]"

      assert_select "input#partner_name[name=?]", "partner[name]"

      assert_select "input#partner_sells_app_exchange_apps[name=?]", "partner[sells_app_exchange_apps]"

      assert_select "textarea#partner_description[name=?]", "partner[description]"
    end
  end
end
