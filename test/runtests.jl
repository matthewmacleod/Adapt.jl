module AdaptTests
    using FactCheck
    using Adapt

    # run tests
    @fact l1_norm(1:10) --> 55

    FactCheck.exitstatus()
end

