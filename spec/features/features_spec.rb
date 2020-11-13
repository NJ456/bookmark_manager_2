require 'pg'

feature 'view bookmark' do
  scenario 'allows you to view "hello world"' do
    visit('/')
    expect(page).to have_content('Hello World')
  end
  scenario 'allows you to view bookmarks' do

    connection = PG.connect(dbname: 'bookmark_m2_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

    visit('/bookmarks')
  
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
  end
end
