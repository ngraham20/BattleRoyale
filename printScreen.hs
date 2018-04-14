displayScreen attacker attHp attMp defender defHp defMp
                                  skill01 cost01 skill02 cost02
                                  skill03 cost03 skill04 cost04 = do
   -- print top beam
  putStrLn("+" ++ replicate 53 '-' ++ "+")

  -- print top box top beams
  putStrLn("|" ++ replicate 23 '=' ++
    replicate 7 ' ' ++ replicate 23 '=' ++ "|")

  -- print attacker name centered in box
  putStr("||" ++ (replicate ((21-(length attacker)) `div` 2) ' ') ++
    attacker ++ (replicate ((21-(length attacker)) `div` 2 +
      (21-(length attacker)) `mod` 2) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print defender name centered in box
  putStrLn("|" ++ (replicate ((21-(length defender)) `div` 2) ' ') ++
    defender ++ (replicate ((21-(length defender)) `div` 2 +
      (21-(length defender)) `mod` 2) ' ') ++ "||")

  -- print top box bar under names
  putStrLn("|+" ++ replicate 21 '-' ++ "+" ++
    replicate 7 ' ' ++ "+" ++ replicate 21 '-' ++ "+|")

  -- print first hp block
  putStr("||HP: " ++ show(attHp) ++
    (replicate (17-(length (show (attHp)))) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print second hp block
  putStrLn("|HP: " ++ show(attMp) ++
    (replicate (17-(length (show (attMp)))) ' ') ++ "||")

  -- print first hp block
  putStr("||MP: " ++ show(defHp) ++
    (replicate (17-(length (show (defHp)))) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print second hp block
  putStrLn("|MP: " ++ show(defMp) ++
    (replicate (17-(length (show (defMp)))) ' ') ++ "||")

  -- print top box bar under character boxes
  putStrLn("|" ++ replicate 23 '=' ++
    replicate 7 ' ' ++ replicate 23 '=' ++ "|")

  -- print space between top and history boxes
  putStrLn ("|" ++ replicate 53 ' ' ++ "|")

  -- print top line of history boxe
  putStrLn ("|" ++ replicate 53 '=' ++ "|")

  -- print space in history boxe
  putStrLn ("|" ++ replicate 53 ' ' ++ "|")

  -- print space in history boxe
  putStrLn ("|" ++ replicate 53 ' ' ++ "|")

  -- print space in history boxe
  putStrLn ("|" ++ replicate 53 ' ' ++ "|")

  -- print bottom line of history box
  putStrLn ("|" ++ replicate 53 '=' ++ "|")

  -- print space between top and history box
  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print top left skill
  putStr("|" ++ (replicate ((26-(length skill01)) `div` 2) ' ') ++
    skill01 ++ (replicate ((26-(length skill01)) `div` 2 +
      (26-(length skill01)) `mod` 2) ' ') ++ "|")

  -- print top right skill
  putStr((replicate ((26-(length skill02)) `div` 2) ' ') ++
    skill02 ++ (replicate ((26-(length skill02)) `div` 2 +
      (26-(length skill02)) `mod` 2) ' ') ++ "|\n")

  -- print cost of top left skill
  putStr("|" ++ (replicate ((26-(length ("Cost: " ++ show cost01))) `div` 2) ' ') ++
    ("Cost: " ++ show cost01) ++ (replicate ((26-(length ("Cost: " ++ show cost01))) `div` 2 +
      (26-(length ("Cost: " ++ show cost01))) `mod` 2) ' ') ++ "|")

 -- print cost of top right skill
  putStrLn((replicate ((26-(length ("Cost: " ++ (show cost02)))) `div` 2) ' ') ++
   ("Cost: " ++ (show cost02)) ++ (replicate ((26-(length ("Cost: " ++ (show cost02)))) `div` 2 +
     (26-(length ("Cost: " ++ (show cost02)))) `mod` 2) ' ') ++ "|")

  -- print middle line of skill boxes
  putStrLn ("+" ++ replicate 26 '-' ++ "+" ++ replicate 26 '-' ++ "+")

  -- print space between top and history box
  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print top centered skills (left)
  putStr("|" ++ (replicate ((26-(length "Restoration")) `div` 2) ' ') ++
    "Restoration" ++ (replicate ((26-(length "Restoration")) `div` 2 +
      (26-(length "Restoration")) `mod` 2) ' ') ++ "|")

  -- print top centered skills (right)
  putStr((replicate ((26-(length "Sun Arrow")) `div` 2) ' ') ++
    "Sun Arrow" ++ (replicate ((26-(length "Sun Arrow")) `div` 2 +
      (26-(length "Sun Arrow")) `mod` 2) ' ') ++ "|\n")

  -- print cost of top left skill
  putStr("|" ++ (replicate ((26-(length ("Cost: " ++ (show cost03)))) `div` 2) ' ') ++
    ("Cost: " ++ (show cost03)) ++ (replicate ((26-(length ("Cost: " ++ (show cost03)))) `div` 2 +
      (26-(length ("Cost: " ++ (show cost03)))) `mod` 2) ' ') ++ "|")

  -- print cost of top right skill
  putStrLn((replicate ((26-(length ("Cost: " ++ (show cost04)))) `div` 2) ' ') ++
   ("Cost: " ++ (show cost04)) ++ (replicate ((26-(length ("Cost: " ++ (show cost04)))) `div` 2 +
     (26-(length ("Cost: " ++ (show cost04)))) `mod` 2) ' ') ++ "|")

  -- print space between top and history boxes
  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print bottom line of history box
  putStrLn ("|" ++ replicate 53 '=' ++ "|")

  -- print bottom line of history box
  putStrLn ("+" ++ replicate 53 '-' ++ "+")

testScreen = displayScreen "Apolo" 20 20
                            "Titan" 20 20
                            "Blessing of the Gods" 15
                            "Deep Slash" 7
                            "Sun Arrow" 4
                            "Restoration" 10
