8class Scraping2
  def self.books_url
    agent = Mechanize.new
    num = 1
    next_url = "https://www.amazon.co.jp/gp/bestsellers/books/1099174/ref=zg_bs_1099174_pg_#{num}?ie=UTF8&pg=#{num}"
    while true do
      begin
        current_page = agent.get("https://www.amazon.co.jp/gp/bestsellers/books/1099174/ref=zg_bs_1099174_pg_#{num}?ie=UTF8&pg=#{num}")
      rescue Mechanize::ResponseCodeError => e
        # p e
        break
      end
      elements = current_page.search('.zg_itemImage_normal')
      #elements.shift
      elements.each do |ele|
        books = ele.at('a img')[:src]
        book_url = ele.at('a')[:href].strip
        books = Book.new(books: books, book_url: book_url)
        books.save
      end
      num += 1
    end
  end
end

 # def self.get_books
  #  agent = Mechanize.new
   # page = agent.get('https://www.amazon.co.jp/gp/bestsellers/books/1099174')
 #    elements.each do |ele|
      # image = ele.at('.zg_itemImage_normal img')[:src]
      # link = ele.at('.zg_title > a')[:href].strip
    # end
  # end
# end

