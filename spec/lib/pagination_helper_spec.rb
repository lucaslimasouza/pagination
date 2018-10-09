require 'spec_helper'
require 'pagination_helper'

RSpec.describe PaginationHelper do
  subject { PaginationHelper.new(items: %w[a b c d e f]) }

  describe '#item_count' do
    it 'returns the number of items within the entire collection' do
      expect(subject.item_count).to eq 6
    end
  end
end
