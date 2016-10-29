require 'rails_helper'

RSpec.describe "partners/show", type: :view do
  before(:each) do
    @partner = assign(:partner, Partner.create!(
      :website => "Website",
      :name => "Name",
      :sells_app_exchange_apps => false,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
