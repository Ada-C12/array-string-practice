require_relative "test_helper"

describe "Practice Exercises" do
  describe "remove duplicates" do
    it "works for 1 element strings" do
      expect(remove_duplicates([1])).must_equal [1]
    end
    
    it "works for empty arrays" do
      expect(remove_duplicates([])).must_equal []
    end

    it "will remove duplicates for longer arrays" do
      expect(remove_duplicates([1, 2, 2, 3, 3, 4]).reject{|num| num == nil }).must_equal [1, 2, 3, 4]
    end
  end

  describe "Longest valid substring" do
    it "will work for the README strings" do
      strings = ["flower","flow","flight"]

      output = longest_prefix(strings)

      expect(output).must_equal "fl"
    end

    it "will work for the strings with the common prefix in the rear" do
      strings = ["flower","flow","flight", "fpastafl"]

      output = longest_prefix(strings)

      expect(output).must_equal "f"
    end

    it "will work for the README strings" do
      strings = ["dog","racecar","car"]

      output = longest_prefix(strings)

      expect(output).must_equal ""
    end

    it "will work with these other strings" do
      strings = ["flower","faster", "flower", "flight"]

      output = longest_prefix(strings)

      expect(output).must_equal "f"
    end
  end
end
