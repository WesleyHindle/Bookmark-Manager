require "pg"

class BookmarksStorage

  def initialize
    @bookmarks = nil
  end

  def all
    con = PG.connect(:dbname => 'bookmark_manager', :user => "mikey")
    return con.exec("SELECT url FROM bookmarks")
  end
end
