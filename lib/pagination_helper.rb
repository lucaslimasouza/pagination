class PaginationHelper
  def initialize(items:)
    @items = items
  end

  def item_count
    @items.size
  end
end
