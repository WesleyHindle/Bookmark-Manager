feature "bookmarks page" do
  scenario "display bookmarks" do
    visit "/bookmarks"
    page = BookmarksStorage.all
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.makersacademy.com")
  end
end
