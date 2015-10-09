C = "top level"
class AboutConstants 

  C = "nested"

  def test_nested_constants_may_also_be_referenced_with_relative_paths
    #assert_equal 
    puts C
  end

  def test_top_level_constants_are_referenced_by_double_colons
    #assert_equal 
    # "top level", 
    puts ::C
  end

  def test_nested_constants_are_referenced_by_their_complete_path
    #assert_equal __, 
   puts AboutConstants::C
    #assert_equal __, 
    puts ::AboutConstants::C
  end

end

