module AdaptTests
    using FactCheck
    using Adapt

    # run tests
    @fact l1_norm(1:10) --> 55
    @fact l2_norm(1:10) --> 19.621416870348583
    @fact l2_norm(1:10) --> 19.621416870348583
    @fact lp_norm(1:10,2) --> 19.621416870348583
    @fact lp_norm(1:10,3) --> 14.462447418811122
    @fact lp_norm(1:10,0.5) --> 504.82352465265495
    # check negative values are properly handled
    b = collect(1:10)
    b[2] = -2
    @fact lp_norm(b,1) --> 55

    FactCheck.exitstatus()
end

