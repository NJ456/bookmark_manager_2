feature 'view bookmark' do
  scenario 'allows you to view "hello world"' do
    visit('/')
    expect(page).to have_content('Hello World')
  end
  scenario 'allows you to view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
  end
end
