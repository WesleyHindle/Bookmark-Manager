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

  def self.create(url:) #These colons are essential. Read about why.
    if ENV['ENVIRONMENT'] == 'test' 
      con = PG.connect(dbname: 'bookmark_manager_test')
    else
      con = PG.connect(dbname: 'bookmark_manager')
    end

    con.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end 


end
