assert("pp - Integer") do
  assert_equal("1\n", 1.pretty_inspect)
end

assert("pp - Float") do
  assert_equal("#{1.1}\n", 1.1.pretty_inspect)
end

assert("pp - String") do
  assert_equal("\"Hello\"\n", "Hello".pretty_inspect)
end

assert("pp - true") do
  assert_equal("true\n", true.pretty_inspect)
end

assert("pp - false") do
  assert_equal("false\n", false.pretty_inspect)
end

assert("pp - nil") do
  assert_equal("nil\n", nil.pretty_inspect)
end

assert("pp - Range") do
  assert_equal("1..2\n", (1..2).pretty_inspect)
end

assert("pp - Hash - short") do
  assert_equal("{1=>\"Hello\"}\n",
               {1 => "Hello"}.pretty_inspect)
end

assert("pp - Hash - long") do
  long_hash = {
    1 => "Hello1",
    2 => "Hello2",
    3 => "Hello3",
    4 => "Hello4",
    5 => "Hello5",
    6 => "Hello6",
    7 => "Hello7",
    8 => "Hello8",
    9 => "Hello9",
  }
  assert_equal(<<-PP, long_hash.pretty_inspect)
{1=>"Hello1",
 2=>"Hello2",
 3=>"Hello3",
 4=>"Hello4",
 5=>"Hello5",
 6=>"Hello6",
 7=>"Hello7",
 8=>"Hello8",
 9=>"Hello9"}
  PP
end

assert("pp - Array - short") do
  assert_equal("[1]\n",
               [1].pretty_inspect)
end

assert("pp - Array - long") do
  long_array = [
    "Hello1",
    "Hello2",
    "Hello3",
    "Hello4",
    "Hello5",
    "Hello6",
    "Hello7",
    "Hello8",
    "Hello9",
  ]
  assert_equal(<<-PP, long_array.pretty_inspect)
["Hello1",
 "Hello2",
 "Hello3",
 "Hello4",
 "Hello5",
 "Hello6",
 "Hello7",
 "Hello8",
 "Hello9"]
  PP
end

assert("pp - Object") do
  klass = Class.new do
    def initialize
      @variable1 = "value1"
      @variable2 = "value2"
      @variable3 = "value3"
      @variable4 = "value4"
      @variable5 = "value5"
    end
  end

  object = klass.new
  assert_equal(<<-PP, object.pretty_inspect)
#{object.to_s.chomp(">")}
 @variable1="value1",
 @variable2="value2",
 @variable3="value3",
 @variable4="value4",
 @variable5="value5">
  PP
end

assert("pp - Struct") do
  struct_class = Struct.new(:variable1,
                            :variable2,
                            :variable3,
                            :variable4,
                            :variable5)

  struct = struct_class.new("value1",
                            "value2",
                            "value3",
                            "value4",
                            "value5")
  assert_equal(<<-PP, struct.pretty_inspect)
\#<struct #{struct.class.to_s}
 variable1="value1",
 variable2="value2",
 variable3="value3",
 variable4="value4",
 variable5="value5">
  PP
end
