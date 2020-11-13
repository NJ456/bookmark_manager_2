require 'pg'
class Bookmarks

  def self.all
    connect = PG.connect(dbname: 'bookmark_m_2')
    result = connect.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
    end
  end
