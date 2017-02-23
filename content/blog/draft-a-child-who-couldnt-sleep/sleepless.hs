--
-- A child couldn't sleep, so her mother told a story about a little frog,
--   who couldn't sleep, so the frog's mother told a story about a little bear,
--     who couldn't sleep, so the bear's mother told a story about a little weasel,
--       ... who fell asleep.
--     ... and then the little bear fell asleep;
--   ... and then the little frog fell asleep;
-- ... and then the child fell asleep.    
--

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
