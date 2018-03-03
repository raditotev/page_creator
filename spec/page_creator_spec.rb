RSpec.describe PageCreator do
  it "has a version number" do
    expect(PageCreator::VERSION).not_to be nil
  end

  it "creates page objects at run time" do
    class HomePage < SitePrism::Page
    end

    expect(home_page.class).to eq HomePage
  end
end
