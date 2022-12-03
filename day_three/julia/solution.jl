global dictMap = Dict("a" => 1, "b" => 2,
                        "c" => 3, "d" => 4,
                        "e" => 5, "f" => 6,
                        "g" => 7, "h" => 8,
                        "i" => 9, "j" => 10,
                        "k" => 11, "l" => 12,
                        "m" => 13, "n" => 14,
                        "o" => 15, "p" => 16,
                        "q" => 17, "r" => 18,
                        "s" => 19, "t" => 20,
                        "u" => 21, "v" => 22,
                        "w" => 23, "x" => 24,
                        "y" => 25, "z" => 26,
                        "A" => 27, "B" => 28,
                        "C" => 29, "D" => 30,
                        "E" => 31, "F" => 32,
                        "G" => 33, "H" => 34,
                        "I" => 35, "J" => 36,
                        "K" => 37, "L" => 38,
                        "M" => 39, "N" => 40,
                        "O" => 41, "P" => 42,
                        "Q" => 43, "R" => 44,
                        "S" => 45, "T" => 46,
                        "U" => 47, "V" => 48,
                        "W" => 49, "X" => 50,
                        "Y" => 51, "Z" => 52
                     )

function dayThreePartOne(file)
    sum = 0
    open(file) do f
        while ! eof(f)
            rucksack = readline(f)
            commonItem = getCommonItem(rucksack)
            itemValue = dictMap[commonItem]
            sum += itemValue
        end
    end
    return sum
end

function getCommonItem(item)::String
    item = string(item)
    divider::Int = length(item)/2
    firstComponent = item[1:divider]
    secondComponent = item[(divider+1):end]

    for s in firstComponent
        if in(s, secondComponent)
            return string(s)
        end
    end
end

@time @show dayThreePartOne("input.txt")
