require 'spec_helper'
require 'output_processor'

describe OutputProcessor do
  describe "#initialize" do
    subject { processor }
    let(:processor) { OutputProcessor.new }

    it "OutputProcessorであること" do
      is_expected.to be_kind_of OutputProcessor
    end
  end

  describe "#execute" do
    before do
      $stdout = StringIO.new
    end

    it "配列を改行区切りで標準出力に表示すること" do
      OutputProcessor.new.execute([0, 314, 196350, 31416, 7])
      expect($stdout.string).to eq "0\n314\n196350\n31416\n7\n"
    end
  end
end
