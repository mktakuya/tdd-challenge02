require 'spec_helper'
require 'input_parser'

describe InputParser do
  describe '#initialize' do
    let(:parser) { InputParser.new }
    subject { parser }

    it { is_expected.to be_kind_of InputParser }
  end
end
