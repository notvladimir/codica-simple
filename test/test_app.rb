require 'minitest/autorun'
require 'app'

class TestApp < Minitest::Test

    def setup
        @test_array = [12, 2, 22, 4, 5, 6, 7, 8]
    end

    def test_reverse_min_max
        assert_equal [12, 22, 2, 4, 5, 6, 7, 8], reverse_min_max(@test_array)
    end

    def test_two_min_elements
        assert_equal  [1, 3], two_min_elements_indexes(@test_array)
    end
end