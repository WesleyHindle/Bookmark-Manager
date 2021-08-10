require_relative "../../lib/bookmarks.rb"

describe BookmarksStorage do
  describe "#all" do
    it "should return a list of all entries in the database " do
      bookmarks = BookmarksStorage.all
      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
    end
  end
end