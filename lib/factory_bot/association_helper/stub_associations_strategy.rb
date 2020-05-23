class StubAssociationsStrategy
  def initialize
    @strategy = FactoryBot.strategy_by_name(:create).new
  end

  def association(runner)
    runner.run(runner_strategy = :build_stubbed)
  end

  def result(evaluation)
    @strategy.result(evaluation)
  end
end

# FactoryBot.register_strategy(:stub_associations, StubAssociationsStrategy)