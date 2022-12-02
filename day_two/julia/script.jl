function dayTwo(file)
    totalScore = 0
    open(file) do f
        while ! eof(f)
            game = readline(f)
            score = getScore(game)
            totalScore += score
        end
    end
    return totalScore
end

function getScore(value)
    op = string(value[1])
    player = string(value[3])
    s = 0

    #Rock
    if player == "X"
        s += 1
    # Paper
    elseif player == "Y"
        s += 2
    # Scissors
    elseif player == "Z"
        s += 3
    end

    # Win
    if (player == "X" && op == "C") || (player == "Y" && op == "A") || (player == "Z" && op == "B")
        s += 6
    # Draw
    elseif (player == "X" && op == "A") || (player == "Y" && op == "B") || (player == "Z" && op == "C")
        s += 3
    end
    return s
end

@time @show dayTwo("input.txt")
