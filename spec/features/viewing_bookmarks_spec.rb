feature "bookmarks page" do
  scenario "display bookmarks" do
    
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    BookmarksStorage.create(url: 'http://www.makersacademy.com')
    BookmarksStorage.create(url: 'http://www.destroyallsoftware.com')
    BookmarksStorage.create(url: 'http://www.google.com')


    visit "/bookmarks"

    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.makersacademy.com")
    expect(page).to have_content('http://www.destroyallsoftware.com')
  end
end
