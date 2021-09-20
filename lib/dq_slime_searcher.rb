# frozen_string_literal: true

require_relative "dq_slime_searcher/version"
require_relative "dq_slime_searcher/slime_data"

module DqSlimeSearcher
  class NotFoundError < StandardError; end

  def self.search(slime)
    slime_data = DqSlimeSearcher::SlimeData.new
    result = ''

    # If the search string is in Japanese, search from Japanese hash.
    if slime =~ /(?:\p{Hiragana}|\p{Katakana}|[一-龠々])/
      result = slime_data.slime_hash_jp[slime]
    # If not, search from English hash.
    else
      result = slime_data.slime_hash_en[slime]
    end

    # raise sitai dake
    if result.nil?
      raise DqSlimeSearcher::NotFoundError, 'the specified slime was not found.'
    end

    result
  end
end
