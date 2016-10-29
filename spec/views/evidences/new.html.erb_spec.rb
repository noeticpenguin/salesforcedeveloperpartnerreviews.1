require 'rails_helper'

RSpec.describe "evidences/new", type: :view do
  before(:each) do
    assign(:evidence, Evidence.new(
      :review => nil,
      :image_url => "MyString",
      :code => "MyText",
      :title => "MyString",
      :user => nil
    ))
  end

  it "renders new evidence form" do
    render

    assert_select "form[action=?][method=?]", evidences_path, "post" do

      assert_select "input#evidence_review_id[name=?]", "evidence[review_id]"

      assert_select "input#evidence_image_url[name=?]", "evidence[image_url]"

      assert_select "textarea#evidence_code[name=?]", "evidence[code]"

      assert_select "input#evidence_title[name=?]", "evidence[title]"

      assert_select "input#evidence_user_id[name=?]", "evidence[user_id]"
    end
  end
end
