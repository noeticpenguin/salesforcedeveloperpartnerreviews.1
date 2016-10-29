require 'rails_helper'

RSpec.describe "evidences/show", type: :view do
  before(:each) do
    @evidence = assign(:evidence, Evidence.create!(
      :review => nil,
      :image_url => "Image Url",
      :code => "MyText",
      :title => "Title",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
