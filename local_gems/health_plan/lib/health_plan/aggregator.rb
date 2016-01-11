module HealthPlan

  class Aggregator
    def initialize(id)
      @subscriber_id = id
    end

    def details
      fetched_drug_info = DrugInformation::Fetcher.new(@subscriber_id)
      { name: 'The full package plan', drugs: fetched_drug_info.details }
    end
  end
end
