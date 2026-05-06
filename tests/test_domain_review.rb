require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = ApexParseJsonLab::DomainReview.new(signal: 65, slack: 20, drag: 24, confidence: 58)
    assert_equal 136, ApexParseJsonLab.domain_review_score(item)
    assert_equal "watch", ApexParseJsonLab.domain_review_lane(item)
  end
end
