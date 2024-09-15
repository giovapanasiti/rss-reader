# frozen_string_literal: true

module Feed::Create
  def self.call(url, labels, user:)
    result = FeedDiscovery.call(url)
    return false unless result

    name = ContentSanitizer.call(result.title.presence || result.feed_url)

    Feed.create(name:, user:, url: result.feed_url, last_fetched: 1.day.ago, labels: labels)
  end
end
