# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_parser_formats.rb


require 'helper'

class TestParserFormats < MiniTest::Test


def parser
  CsvReader::Parser
end


def test_parse_whitespace
   records = [["a", "b", "c"],
              ["1", "2", "3"]]

   ## don't care about newlines (\r\n) ??? - fix? why? why not?
   assert_equal records, parser.default.parse( "a,b,c\n1,2,3" )
   assert_equal records, parser.default.parse( "a,b,c\n1,2,3\n" )
   assert_equal records, parser.default.parse( " a, b ,c \n\n1,2,3\n" )
   assert_equal records, parser.default.parse( " a, b ,c \n \n1,2,3\n" )

   assert_equal [["a", "b", "c"],
                 [""],
                 ["1", "2", "3"]], parser.default.parse( %Q{a,b,c\n""\n1,2,3\n} )
   assert_equal [["", ""],
                 [""],
                 ["", "", ""]], parser.default.parse( %Q{,\n""\n"","",""\n} )


   ## strict rfc4180 - no trim leading or trailing spaces or blank lines
   assert_equal records,   parser.strict.parse( "a,b,c\n1,2,3" )
   assert_equal [["a", "b", "c"],
                 [""],
                 ["1", "2", "3"]], parser.strict.parse( "a,b,c\n\n1,2,3" )
   assert_equal [[" a", " b ", "c "],
                 [""],
                 ["1", "2", "3"]], parser.strict.parse( " a, b ,c \n\n1,2,3" )
    assert_equal [[" a", " b ", "c "],
                  [" "],
                  ["",""],
                  ["1", "2", "3"]], parser.strict.parse( " a, b ,c \n \n,\n1,2,3" )
end


def test_parse_empties
    assert_equal [], parser.default.parse( "\n \n \n" )

    ## strict rfc4180 - no trim leading or trailing spaces or blank lines
    assert_equal [[""],
                  [" "],
                  [" "]], parser.strict.parse( "\n \n \n" )
    assert_equal [[""],
                  [" "],
                  [" "]], parser.strict.parse( "\n \n " )

    assert_equal [[""]], parser.strict.parse( "\n" )
    assert_equal [],     parser.strict.parse( "" )
end

end # class TestParserFormats
