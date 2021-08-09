require_relative "../../lib/bookmarks.rb"

describe BookmarksStorage do
  describe "#all" do
    it "should return a list of all entries in the database " do
      bookmark = BookmarksStorage.new
      temp = bookmark.all.map{|each| each}
      expect(temp[2]["url"]).to(eq("www.ebay.com"))
    end
  end
end