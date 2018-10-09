class PaginationHelper
  def initialize(items:, items_per_page:)
    @items = items
    @items_per_page = items_per_page
    @pages = build_pages
  end

  def item_count
    items.size
  end

  def page_count
    pages.size
  end

  def page_item_count(page_index)
    page = pages[page_index]
    page ? page.size : -1
  end

  def page_index(item_index)
    item = items[item_index]
    page = find_page_with(item)
    pages.index(page) || -1
  end

  private

  attr_reader :items, :pages, :items_per_page

  def build_pages
    pages = []
    items.each_slice(items_per_page) { |page| pages.push page }
    pages
  end

  def find_page_with(item)
    pages.select { |page| page.include? item }.flatten
  end
end
