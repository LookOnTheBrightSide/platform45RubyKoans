class About
  class MySpecialError < RuntimeError
  end

   def test_exceptions_inherit_from_Exception
    puts MySpecialError.ancestors[1]
    puts MySpecialError.ancestors[2]
    puts MySpecialError.ancestors[3]
    puts MySpecialError.ancestors[4]
  end
end

test_exceptions_inherit_from_Exception