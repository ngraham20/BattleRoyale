-- function to create a character
-- has name, att, def, agi, hp, and mp
person(name, str, def, agi, hp, mp) = (\message -> message (name, str, def, agi, hp, mp))

jason = person("Jason", 10, 5, 6, 20, 20)
apolo = person("Apolo", 20, 10, 8, 20, 20)

-- function for each attribute in character
name(n, _, _, _, _, _) = n
str(_, at, _, _, _, _) = at
def(_, _, d, _, _, _) = d
agi(_, _, _, ag, _, _) = ag
hp(_, _, _, _, h, _) = h
mp(_, _, _, _, _, m) = m

-- functions to get character stats
-- getName character = character name
-- getAtt character = character att
-- getDef character = character def
-- getAgi character = character agi
-- getHp character = character hp
-- getMp character = character mp

-- function to create skills
-- name, att+/- def +/- agi+/- mp_cost
-- skill(name, att, def, agi, cost) =
--   /message -> message(name, att, def, agi, cost)

-- damage character
hit character amt =
  character(\(n, at, d, ag, h, m) -> if d-amt > 0
                                     then person(n, at, d, ag, h, m)
                                     else person(n, at, d, ag, h+d-amt, m))

-- reduce mana
spendMana character amt =
  character(\(n, at, d, ag, h, m) -> if m-amt > 0
                                     then person(n, at, d, ag, h, m-amt)
                                     else person(n, at, d, ag, h, 0))

-- function to have one character attack another
fight attacker defender =
  hit defender dmg
    where dmg = attacker str

-- function to print the current stats of a character
printCharacter character =
    character (\(n, a, d, ag, h, m) ->  putStr("---------------\n" ++
                  n ++ ":\n" ++
                  "str: " ++ show(a) ++ "\n" ++
                  "def: " ++ show(d) ++ "\n" ++
                  "agi: " ++ show(ag) ++ "\n" ++
                  "hp: " ++ show(h) ++ "\n" ++
                  "mp: " ++ show(m) ++ "\n" ++
                  "---------------\n"))

apJas = fight apolo jason
jasAp = fight jason apolo
