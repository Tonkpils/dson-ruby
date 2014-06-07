require 'dson/parser'
require 'dson/tokenizer'
require 'stringio'

module DSON

  def self.parse(dson)
    input   = StringIO.new dson
    tok     = DSON::Tokenizer.new input
    parser  = DSON::Parser.new tok
    handler = parser.parse
    handler.result
  end

end
