-- A Bedtime Story
indent :: Int -> String
indent n = concat $ replicate n "  "

bedtimestory :: [String] -> Int -> Int -> String
bedtimestory words i n
    -- First line
    | i == 0    =  "A " ++ (words!!0) ++ " couldn't sleep, so her mother told her a story about a little " ++ (words!!1) ++ ",\n" ++
                   bedtimestory words (i+1) n ++
                   "... and then the " ++ (words!!0) ++ " fell asleep.\n"
    -- Every other line
    | i < n-1   =  indent i ++
                   "who couldn't sleep, so the " ++ (words!!i) ++ "'s mother told a story about a little " ++ (words!!(i+1)) ++ ",\n" ++
                   bedtimestory words (i+1) n ++
                   indent i ++
                   "... and then the little" ++ (words!!i) ++ " fell asleep;\n" 
    -- Last line
    | i == n-1  =  indent i ++
                   "... who fell asleep.\n"

main = do
    -- let names = [ "child", "frog", "bear", "weasel", "elephant", "tiger", "monkey", "mouse", "cat", "rabbit", "bird" ]
    let names = [ "child", "frog", "bear" ]
    let n = length names
    putStrLn $ bedtimestory names 0 n
