module PrintScreen (printScreen, printCharacter) where

printScreen attacker defender skill01 skill02 skill03 skill04 = do
   -- print top beam
  putStrLn("+" ++ replicate 53 '-' ++ "+")

  -- print top box top beams
  putStrLn("|" ++ replicate 23 '=' ++
    replicate 7 ' ' ++ replicate 23 '=' ++ "|")

  -- print attacker name centered in box
  putStr("||" ++ (replicate ((21-(length (name attacker))) `div` 2) ' ') ++
    name attacker ++ (replicate ((21-(length (name attacker))) `div` 2 +
      (21-(length (name attacker))) `mod` 2) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print defender name centered in box
  putStrLn("|" ++ (replicate ((21-(length (name defender))) `div` 2) ' ') ++
    name defender ++ (replicate ((21-(length (name defender))) `div` 2 +
      (21-(length (name defender))) `mod` 2) ' ') ++ "||")

  -- print top box bar under names
  putStrLn("|+" ++ replicate 21 '-' ++ "+" ++
    replicate 7 ' ' ++ "+" ++ replicate 21 '-' ++ "+|")

  -- print first hp block
  putStr("||HP: " ++ show(hp attacker) ++
    (replicate (17-(length (show (hp attacker)))) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print second hp block
  putStrLn("|HP: " ++ show(mp attacker) ++
    (replicate (17-(length (show (mp attacker)))) ' ') ++ "||")

  -- print first hp block
  putStr("||MP: " ++ show(hp defender) ++
    (replicate (17-(length (show (hp defender)))) ' ') ++ "|")

  -- print spaces between boxes
  putStr(replicate 7 ' ')

  -- print second hp block
  putStrLn("|MP: " ++ show(mp defender) ++
    (replicate (17-(length (show (mp defender)))) ' ') ++ "||")

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
  putStr("|" ++ (replicate ((26-(length (skillName skill01))) `div` 2) ' ') ++
    skillName skill01 ++ (replicate ((26-(length (skillName skill01))) `div` 2 +
      (26-(length (skillName skill01))) `mod` 2) ' ') ++ "|")

  -- print top right skill
  putStr((replicate ((26-(length (skillName skill02))) `div` 2) ' ') ++
    skillName skill02 ++ (replicate ((26-(length (skillName skill02))) `div` 2 +
      (26-(length (skillName skill02))) `mod` 2) ' ') ++ "|\n")

  -- print cost of top left skill
  putStr("|" ++ (replicate ((26-(length ("Cost: " ++
    show (skillCost skill01)))) `div` 2) ' ') ++
    ("Cost: " ++ show (skillCost skill01)) ++
    (replicate ((26-(length ("Cost: " ++ show (skillCost skill01)))) `div` 2 +
    (26-(length ("Cost: " ++ show (skillCost skill01)))) `mod` 2) ' ') ++ "|")

 -- print cost of top right skill
  putStrLn((replicate ((26-(length ("Cost: " ++
    (show (skillCost skill02))))) `div` 2) ' ') ++
    ("Cost: " ++ (show (skillCost skill02))) ++
    (replicate ((26-(length ("Cost: " ++ (show (skillCost skill02))))) `div` 2 +
    (26-(length ("Cost: " ++ (show (skillCost skill02))))) `mod` 2) ' ') ++ "|")

  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print middle line of skill boxes
  putStrLn ("+" ++ replicate 26 '-' ++ "+" ++ replicate 26 '-' ++ "+")

  -- print space between top and history box
  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print top centered skills (left)
  putStr("|" ++ (replicate ((26-(length (skillName skill03))) `div` 2) ' ') ++
    skillName skill03 ++ (replicate ((26-(length (skillName skill03))) `div` 2 +
      (26-(length (skillName skill03))) `mod` 2) ' ') ++ "|")

  -- print top centered skills (right)
  putStr((replicate ((26-(length (skillName skill04))) `div` 2) ' ') ++
    skillName skill04 ++ (replicate ((26-(length (skillName skill04))) `div` 2 +
      (26-(length (skillName skill04))) `mod` 2) ' ') ++ "|\n")

  -- print cost of top left skill
  putStr("|" ++ (replicate ((26-(length ("Cost: " ++
    (show (skillCost skill03))))) `div` 2) ' ') ++
    ("Cost: " ++ (show (skillCost skill03))) ++
    (replicate ((26-(length ("Cost: " ++ (show (skillCost skill03))))) `div` 2 +
    (26-(length ("Cost: " ++ (show (skillCost skill03))))) `mod` 2) ' ') ++ "|")

  -- print cost of top right skill
  putStrLn((replicate ((26-(length ("Cost: " ++
    (show (skillCost skill04))))) `div` 2) ' ') ++
    ("Cost: " ++ (show (skillCost skill04))) ++
    (replicate ((26-(length ("Cost: " ++ (show (skillCost skill04))))) `div` 2 +
    (26-(length ("Cost: " ++ (show (skillCost skill04))))) `mod` 2) ' ') ++ "|")

  -- print space between top and history boxes
  putStrLn ("|" ++ replicate 26 ' ' ++ "|" ++ replicate 26 ' ' ++ "|")

  -- print bottom line of history box
  putStrLn ("|" ++ replicate 53 '=' ++ "|")

  -- print bottom line of history box
  putStrLn ("+" ++ replicate 53 '-' ++ "+")

printCharacter character =
  (\(n, a, d, ag, h, mh, m, mm) ->
                putStr("---------------\n" ++
                show(n) ++ ":\n" ++
                "str: " ++ show(a) ++ "\n" ++
                "def: " ++ show(d) ++ "\n" ++
                "agi: " ++ show(ag) ++ "\n" ++
                "hp: " ++ show(h) ++ "\n" ++
                "max hp: " ++ show(mh) ++ "\n" ++
                "mp: " ++ show(m) ++ "\n" ++
                "max mp: " ++ show(mm) ++ "\n" ++
                "---------------\n")) character

name(n, _, _, _, _, _, _, _) = n
str(_, st, _, _, _, _, _, _) = st
def(_, _, d, _, _, _, _, _) = d
agi(_, _, _, ag, _, _, _, _) = ag
hp(_, _, _, _, h, _, _, _) = h
mhp(_, _, _, _, _, mh, _, _) = mh
mp(_, _, _, _, _, _, m, _) = m
mmp(_, _, _, _, _, _, _, mm) = mm

skillName(n, _, _, _, _, _) = n
skillStr(_, st, _, _, _, _) = st
skillDef(_, _, d, _, _, _) = d
skillAgi(_, _, _, ag, _, _) = ag
skillHp(_, _, _, _, h, _) = h
skillCost(_, _, _, _, _, c) = c
