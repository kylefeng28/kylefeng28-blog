-- The Twelve Days of Christmas
gift 1 = "patridge in a pear tree"
gift 2 = "Two turtle doves"
gift 3 = "Three French hens"
gift 4 = "Four calling birds"
gift 5 = "Five golden rings"
gift 6 = "Six geese-a-laying"
gift 7 = "Seven swans-a-swimming"
gift 8 = "Eight maids-a-milking"
gift 9 = "Nine ladies dancing"
gift 10 = "Ten lords-a-leaping"
gift 11 = "Eleven pipers piping"
gift 12 = "Twelve drummers drumming"

gifts :: Int -> String
gifts 1 = "And a " ++ gift 1
gifts n = gift n ++ "\n" ++ gifts (n-1)

ordinal :: Int -> String
ordinal 1 = "1st"
ordinal 2 = "2nd"
ordinal 3 = "3rd"
ordinal n = show n ++ "th"

day :: Int -> String
day 1 = "On the 1st day of Christmas, my true love gave to me:\n" ++
              "a " ++ gift 1 ++ "\n"
day n = "On the " ++ ordinal n ++ " day of Christmas, my true love gave to me:\n" ++
              gifts n ++ "\n"

christmas = map day [1,2..12]

main = do
    mapM putStrLn christmas

-- I could've used a list: take n $ reverse gifts
