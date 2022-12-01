function dayOne(file)
    open(file) do f
        line = 1
        rollingSum = 0
        maxSum = 0
        elf = 0
        topSums = Int64[]
        while ! eof(f)
            treat = readline(f)
            if isempty(treat)
                if rollingSum > maxSum
                    maxSum = rollingSum
                    elf = line
                end
                push!(topSums, rollingSum)
                rollingSum = 0
                line += 1
            else
                rollingSum += parse(Int, treat)
            end
        end
        println("$elf : $maxSum")
        sumTopThree = sum((sort(topSums, rev=true)[1:3]))
        println("$sumTopThree")
    end
end

@time dayOne("input.txt")
