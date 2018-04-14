-- function to create a character
-- has name, str, def, agi, hp, and mp
person(name, str, def, agi, hp, max_hp, mp, max_mp) =
  (\message -> message (name, str, def, agi, hp, max_hp, mp, max_mp))

jason = person("Jason", 10, 5, 6, 20, 20, 20, 20)
harpy = person("Harpy", 10, 5, 10, 40, 40, 10, 10)

apolo = person("Apolo", 20, 10, 8, 20, 20, 20, 20)
titan = person("Titan", 30, 20, 0, 100, 100, 30, 30)

-- function for each attribute in character
name(n, _, _, _, _, _, _, _) = n
str(_, at, _, _, _, _, _, _) = at
def(_, _, d, _, _, _, _, _) = d
agi(_, _, _, ag, _, _, _, _) = ag
hp(_, _, _, _, h, _, _, _) = h
mhp(_, _, _, _, _, mh, _, _) = mh
mp(_, _, _, _, _, _, m, _) = m
mmp(_, _, _, _, _, _, _, mm) = mm

-- functions to get character stats
getName character = character name
getStr character = character str
getDef character = character def
getAgi character = character agi
getHp character = character hp
getMaxHp character = character mhp
getMp character = character mp
getMaxMp character = character mmp

-- function to create skills
-- name, att+/- def +/- agi+/- hp+/- mp_cost
skill(name, str, def, agi, hp, cost) =
  \message -> message(name, str, def, agi, hp, cost)

restoration = skill("Restoration", 0, 0, 0, 5, 2)
deepCut = skill("Deep Cut", 0, -2, 0, -5, 7)
lightArrow = skill("Sun Beam", 0, 0, 0, -10, 10)
blessingOfTheGods = skill("Blessing of the Gods", 2, 2, 2, 5, 25)

-- damage character
hit character amt =
  character(\(n, at, d, ag, h, mh, m, mm) ->
    if d-amt <= 0
    then if h+d-amt > 0
         then person(n, at, d, ag, h+d-amt, mh, m, mm)
         else person(n, at, d, ag, 0, mh, m, mm)
    else person(n, at, d, ag, h, mh, m, mm))

heal character amt =
  character(\(n, at, d, ag, h, mh, m, mm) ->
  if h + amt <= mh
  then person(n, at, d, ag, h+amt, mh, m, mm)
  else person(n, at, d, ag, mh, mh, m, mm))

-- reduce mana
spendMana character amt =
  character(\(n, at, d, ag, h, mh, m, mm) ->
    if m-amt > 0
    then person(n, at, d, ag, h, mh, m-amt, mm)
    else person(n, at, d, ag, h, mh, 0, mm))

-- function to have one character attack another
fight attacker defender =
  hit defender dmg
    where dmg = getStr attacker

-- function to print the current stats of a character
printCharacter character =
    character (\(n, a, d, ag, h, mh, m, mm) ->
                  putStr("---------------\n" ++
                  show(n) ++ ":\n" ++
                  "str: " ++ show(a) ++ "\n" ++
                  "def: " ++ show(d) ++ "\n" ++
                  "agi: " ++ show(ag) ++ "\n" ++
                  "hp: " ++ show(h) ++ "\n" ++
                  "max hp: " ++ show(mh) ++ "\n" ++
                  "mp: " ++ show(m) ++ "\n" ++
                  "max mp: " ++ show(mm) ++ "\n" ++
                  "---------------\n"))

-- printName character =
--   character (\(n, _, _, _, _, _, _, _) ->
--               show(n))

printScreen attacker defender = do
  putStrLn "-------------------------------------------------------"
  putStrLn $ "|Player: " ++ name attacker "|"
  putStrLn "-------------------------------------------------------"

apJas = fight apolo jason
jasAp = fight jason apolo
