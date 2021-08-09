feature "bookmarks page" do
  scenario "display bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content("www.ebay.com")
    expect(page).to have_content("www.makersacademy.com")
  end
end
