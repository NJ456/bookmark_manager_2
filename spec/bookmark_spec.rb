require './lib/bookmark'
require 'pg'

RSpec.describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks in an array' do
      bookmarks = Bookmarks.all
      expect(Bookmarks.all).to include("http://www.makersacademy.com")
      expect(Bookmarks.all).to include("http://www.destroyallsoftware.com")
      expect(Bookmarks.all).to include("http://www.google.com")
    end
  end
end
