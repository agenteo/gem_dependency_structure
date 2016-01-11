require 'spec_helper'

describe HealthPlan::Aggregator do

  describe "#details" do
    before do
      fetcher_double = double('DrugInformation::Fetcher', details: {})
      allow(DrugInformation::Fetcher).to receive(:new).and_return(fetcher_double)
    end

    it "should not throw exceptions" do
      aggregator = HealthPlan::Aggregator.new(12345)
      expect(aggregator.details).to be_a_kind_of(Hash)
    end
  end

end
