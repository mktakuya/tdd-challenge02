require 'spec_helper'
require 'circle'

describe Circle do
  describe '#initialize' do
    let(:circle) { Circle.new(5) }
    subject { circle }

    it { is_expected.to be_kind_of Circle }

    it 'インスタンス変数@radiusに引数がセットされること' do
      expect(circle.instance_variable_get(:@radius)).to eq 5
    end
  end

  describe "#calc_rounded_area" do
    subject { circle.calc_rounded_area }

    let(:circle) { Circle.new(0) }

    context "@radiusが0のとき" do
      before do
        circle.instance_variable_set(:@radius, 0)
      end

      it "0を返すこと" do
        is_expected.to eq 0
      end
    end

    context "@radiusが10のとき" do
      before do
        circle.instance_variable_set(:@radius, 10)
      end

      it "314を返すこと" do
        is_expected.to eq 314
      end
    end

    context "@radiusが250のとき" do
      before do
        circle.instance_variable_set(:@radius, 250)
      end

      it "196350を返すこと" do
        is_expected.to eq 196350
      end
    end

    context "@radiusが100のとき" do
      before do
        circle.instance_variable_set(:@radius, 100)
      end

      it "31416を返すこと" do
        is_expected.to eq 31416
      end
    end

    context "@radiusが1.5のとき" do
      before do
        circle.instance_variable_set(:@radius, 1.5)
      end

      it "7を返すこと" do
        is_expected.to eq 7
      end
    end
  end


end
