feature "bookmarks page" do
  scenario "display bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
