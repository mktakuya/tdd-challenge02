require 'spec_helper'
require 'input_parser'

describe InputParser do
  before { $stdin = StringIO.new("0\n10\n250\n100\n1.5") }

  describe '#initialize' do
    let(:parser) { InputParser.new }
    subject { parser }

    it { is_expected.to be_kind_of InputParser }
  end

  describe '#execute' do
    let(:parser) { InputParser.new }

    it '標準入力を受け取って改行区切りにして配列にして返す' do
      expect(parser.execute($stdin.read)).to match_array [0.0, 10.0, 250.0, 100.0, 1.5]
    end
  end
end
