
function l1_norm(a)
    return reduce(+, map(x-> abs(x),a))
end

function l2_norm(a)
    return sqrt(reduce(+, map(x -> x^2,a)))
end

function ln_norm(a,power)
    return (reduce(+, map(x -> x^power,a)))^(1/power)
end
