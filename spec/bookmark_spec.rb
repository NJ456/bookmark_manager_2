require './lib/bookmark'
require 'pg'

RSpec.describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks in an array' do

    connection = PG.connect(dbname: 'bookmark_m2_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmarks.all

      expect(Bookmarks.all).to include("http://www.makersacademy.com")
      expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmarks.all).to include("http://www.google.com")
    end
  end
end
