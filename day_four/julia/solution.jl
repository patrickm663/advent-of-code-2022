function dayFourPartOne(file)::Int16
    sum::Int16 = 0
    open(file) do f
        while ! eof(f)
            id::String = readline(f)
            pairValue::Int16 = checkPair(id)
            sum += pairValue
        end
    end
    return sum
end

function checkPair(line)::Int16
    s::Vector = split(line, ",")
    startA::Int16 = parse(Int16, split(s[1], "-")[1])
    endA::Int16 = parse(Int16, split(s[1], "-")[2])
    startB::Int16 = parse(Int16, split(s[2], "-")[1])
    endB::Int16 = parse(Int16, split(s[2], "-")[2])

    if (startA ≤ startB && endB ≤ endA) 
        return 1
    elseif (startA ≥ startB && endB ≥ endA)
        return 1
    else
        return 0
    end
end

@time @show dayFourPartOne("input.txt")
