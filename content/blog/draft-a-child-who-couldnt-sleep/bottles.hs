showBottle :: Int -> String
showBottle 0 = "no more bottles"
showBottle 1 =  "1 bottle"
showBottle n = show n ++ " bottles"

bottles :: Int -> String
bottles 0 = "No more bottles of beer on the wall, no more bottles of beer.\n" ++
            "Go to the store and buy some more, 99 bottles of beer on the wall." 
bottles n = showBottle n ++ " of beer on the wall, " ++ showBottle n ++ " of beer.\n" ++
            "Take one down and pass it around, " ++ showBottle (n-1) ++ " of beer on the wall.\n\n" ++
            bottles (n-1)

main = do
    putStrLn $ bottles 99
