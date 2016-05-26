require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        :title => "Title",
        :amount => 1.5
      ),
      Record.create!(
        :title => "Title",
        :amount => 1.5
      )
    ])
  end

  it "renders a list of records" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
