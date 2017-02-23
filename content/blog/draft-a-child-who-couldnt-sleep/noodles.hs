--
-- Just as I took it over from my father,
--   who took it over from his father,
--     who won it from a friend in a game of mahjong.
--

import Text.Printf

indent :: Int -> String
indent n = concat $ replicate n "  "

story' :: Int -> Int -> String
story' n i
    -- First line
    | i == 0    =  "Just as I took it over from my father,\n" ++
                   story' n (i+1)
    -- Every other line
    | i < n-1   =  indent i ++
                   "who took it over from his father,\n" ++
                   story' n (i+1)
    -- Last line
    | i == n-1  =  indent i ++ "who won it from a friend in a game of mahjong.\n"

story n = story' n 0

main = do
    putStrLn $ story 10 
