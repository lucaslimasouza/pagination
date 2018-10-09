class PaginationHelper
  def initialize(items:, items_per_page:)
    @items = items
    @items_per_page = items_per_page
    @pages = build_pages
  end

  def item_count
    @items.size
  end

  def page_count
    pages.size
  end

  private

  attr_reader :items, :pages, :items_per_page

  def build_pages
    pages = []
    items.each_slice(items_per_page) { |page| pages.push page }
    pages
  end
end
