feature "bookmarks page" do
  scenario "display bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content("www.google.com\nwww.amazon.com\n")
  end
end
