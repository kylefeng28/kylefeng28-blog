-- Alouette
endroit 1 = "la bête"
endroit 2 = "le bec"
endroit 3 = "les yeux"
endroit 4 = "le cou"
endroit 5 = "les ailes"
endroit 6 = "les pattes"
endroit 7 = "la queue"
endroit 8 = "le dos"

endroits :: Int -> String
endroits 1 = "Et " ++ endroit 1 ++ "! x2\n"
endroits n = "Et " ++ endroit n ++ "! x2\n" ++ endroits (n-1)


verse :: Int -> String
verse n = "Alouette, gentille alouette,\n" ++
          "Alouette, je te plumerai.\n" ++
          "Je te plumerai " ++ endroit n ++ ". x2\n" ++
          endroits n ++
          "Alouette! x2\n" ++
          "A-a-a-ah\n"

alouette = map verse [1,2..8]

main = do
    mapM putStrLn alouette
