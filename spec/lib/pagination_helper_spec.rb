require 'spec_helper'
require 'pagination_helper'

RSpec.describe PaginationHelper do
  subject { PaginationHelper.new(items: %w[a b c d e f], items_per_page: 4) }

  describe '#item_count' do
    it 'returns the number of items within the entire collection' do
      expect(subject.item_count).to eq 6
    end
  end

  describe '#page_count' do
    it 'returns the number of pages' do
      expect(subject.page_count).to eq 2
    end
  end
end
