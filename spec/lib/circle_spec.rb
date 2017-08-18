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
end
