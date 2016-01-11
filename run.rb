require 'health_plan'

aggregated_health_plan = HealthPlan::Aggregator.new(12345)
aggregated_health_plan.details
