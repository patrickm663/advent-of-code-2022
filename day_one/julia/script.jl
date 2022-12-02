function dayOne(file)
    open(file) do f
        line = 1
        rollingSum = 0
        elf = 0
        topSums = Int64[]
        while ! eof(f)
            treat = readline(f)
            if isempty(treat)
                push!(topSums, rollingSum)
                rollingSum = 0
                line += 1
            else
                rollingSum += parse(Int, treat)
            end
        end
        topSums = sort(topSums, rev=true)
        topResult = topSums[1]
        sumTopThree = sum((topSums[1:3]))
        println("$topResult")
        println("$sumTopThree")
    end
end

@time dayOne("input.txt")
