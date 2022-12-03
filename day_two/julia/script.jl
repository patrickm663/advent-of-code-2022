function dayTwoPartOne(file)
    totalScore = 0
    open(file) do f
        while ! eof(f)
            game = readline(f)
            opMove = game[1]
            playerMove = game[3]
            game = opMove * playerMove
            score = getScore(game)
            totalScore += score
        end
    end
    return totalScore
end

function dayTwoPartTwo(file)
    totalScore = 0
    open(file) do f
        while ! eof(f)
            game = string(readline(f))
            opMove = game[1]
            playerMove = getMove(game)
            game = opMove * playerMove
            score = getScore(game)
            totalScore += score
        end
    end
    return totalScore
end

function getScore(value)
    op = string(value[1])
    player = string(value[2])
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

function getMove(gameState)
    opMove = string(gameState[1])
    winStatus = string(gameState[3])

    # Lose
    if winStatus == "X"
        # Rock, return Scissors
        if opMove == "A"
            return "Z"
        # Paper, return Rock
        elseif opMove == "B"
            return "X"
        # Scissors, return Paper
        elseif opMove == "C"
            return "Y"
        end
        
    # Draw 
    elseif winStatus == "Y"
        # Rock, return Rock
        if opMove == "A"
            return "X"
        # Paper, return Paper
        elseif opMove == "B"
            return "Y"
        # Scissors, return Scissors
        elseif opMove == "C"
            return "Z"
        end

    # Win 
    elseif winStatus == "Z"
        # Rock, return Paper
        if opMove == "A"
            return "Y"
        # Paper, return Scissors
        elseif opMove == "B"
            return "Z"
        # Scissors, return Rock
        elseif opMove == "C"
            return "X"
        end
    end
end

@time @show dayTwoPartOne("input.txt")
@time @show dayTwoPartTwo("input.txt")
