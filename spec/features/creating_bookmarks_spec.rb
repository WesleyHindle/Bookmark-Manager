feature 'Adding a new bookmark' do 
  scenario 'user can add a new bookmark to the manager' do 
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button('Submit')

    expect(page).to have_content 'http://example.org'
  end 
end 