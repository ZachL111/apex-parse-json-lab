require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = ApexParseJsonLab::Signal.new(demand: 82, capacity: 75, latency: 18, risk: 9, weight: 4)
    assert_equal 112, ApexParseJsonLab.score(signal_case_1)
    assert_equal 'review', ApexParseJsonLab.classify(signal_case_1)
    signal_case_2 = ApexParseJsonLab::Signal.new(demand: 71, capacity: 79, latency: 26, risk: 6, weight: 12)
    assert_equal 99, ApexParseJsonLab.score(signal_case_2)
    assert_equal 'review', ApexParseJsonLab.classify(signal_case_2)
    signal_case_3 = ApexParseJsonLab::Signal.new(demand: 92, capacity: 75, latency: 22, risk: 17, weight: 9)
    assert_equal 70, ApexParseJsonLab.score(signal_case_3)
    assert_equal 'review', ApexParseJsonLab.classify(signal_case_3)
  end
end
