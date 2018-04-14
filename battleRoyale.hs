import qualified PrintScreen

-- create character
-- name, str, def, agi, hp, max_hp, mp, and max_mp
character(name, str, def, agi, hp, max_hp, mp, max_mp) =
  (name, str, def, agi, hp, max_hp, mp, max_mp)

jason = character("Jason", 10, 5, 6, 20, 20, 20, 20)
harpy = character("Harpy", 10, 5, 10, 40, 40, 10, 10)

apolo = character("Apolo", 25, 10, 8, 20, 20, 20, 20)
titan = character("Titan", 30, 20, 0, 100, 100, 30, 30)

getName(n, _, _, _, _, _, _, _) = n
getStr(_, at, _, _, _, _, _, _) = at
getDef(_, _, d, _, _, _, _, _) = d
getAgi(_, _, _, ag, _, _, _, _) = ag
getHp(_, _, _, _, h, _, _, _) = h
getMaxHp(_, _, _, _, _, mh, _, _) = mh
getMp(_, _, _, _, _, _, m, _) = m
getMaxMp(_, _, _, _, _, _, _, mm) = mm

skill(name, str, def, agi, hp, cost) =
  (name, str, def, agi, hp, cost)

restoration = skill("Restoration", 0, 0, 0, 5, 2)
deepCut = skill("Deep Cut", 0, -2, 0, -5, 7)
lightArrow = skill("Sun Beam", 0, 0, 0, -10, 10)
blessingOfTheGods = skill("Blessing of the Gods", 2, 2, 2, 5, 25)

damage character amt =
  (\(n,at,d,ag,h,mh,m,mm) -> if h-amt > 0
                             then (n,at,d,ag,h-amt, mh, m, mm)
                             else (n,at,d,ag,0,mh,m,mm)) character

heal character amt =
 (\(n,at,d,ag,h,mh,m,mm) -> if h+amt <= mh
                            then (n,at,d,ag,h+amt,mh,m,mm)
                            else (n,at,d,ag,mh,mh,m,mm)) character

spendMana character amt =
  (\(n,at,d,ag,h,mh,m,mm) -> if m-amt > 0
                             then (n,at,d,ag,h,mh,m-amt,mm)
                             else (n,at,d,ag,mh,mh,0,mm)) character

basicAttack attacker defender =
  damage defender amt
  where amt = let str = getStr attacker
                  def = getDef defender
              in if str-def > 0
                 then str-(def `div` 2)
                 else 0

beginingScreen = PrintScreen.printScreen apolo titan restoration
                                    deepCut lightArrow blessingOfTheGods

apoloAttack01 = PrintScreen.printScreen apolo (basicAttack apolo titan) restoration
                                    deepCut lightArrow blessingOfTheGods
