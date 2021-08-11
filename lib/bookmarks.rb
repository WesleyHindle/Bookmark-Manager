require "pg"

class BookmarksStorage
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      con = PG.connect(:dbname => 'bookmark_manager_test', :user => "Student") # :user isn't necessary
    else
      con = PG.connect(:dbname => 'bookmark_manager')
    end
    
    result = con.exec("SELECT url FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end


end
