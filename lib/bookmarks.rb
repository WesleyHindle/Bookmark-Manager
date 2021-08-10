require "pg"

class BookmarksStorage

  def self.all
    con = PG.connect(:dbname => 'bookmark_manager', :user => "Student")
    result = con.exec("SELECT url FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end


end
