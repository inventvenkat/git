doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

lInt :: [Int]
lInt = [1,2,3]

add :: Integral a => a -> a -> a
add = (+)

length_own_version list = sum $ [1 | _ <- list ]

data A = B Int


binaryAnd :: Bool -> Bool -> Bool
binaryAnd False _ = False
binaryAnd _ False = False
binaryAnd _ _     = True

-- var binaryAnd = function (bool1) {
--     return function(bool2){
--         return (bool1 && bool2)
--     }
-- }


lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)


toString :: Int -> String
toString integer =
    case integer of
        1 -> "One"
        2 -> "Two"
        _ -> "out of scope"

-- factorial 5ws

-- 5 * factorial 4
-- 5 * 4 * factorial 3
-- 5 * 4 * 3 * factorial 2
-- 5 * 4 * 3 * 2 * factorial 1
-- 5 * 4 * 3 * 2 * 1 * factorial 0
-- 5 * 4 * 3 * 2 * 1 * 1

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"
-- charName _ = "out of scope"

-- addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)

-- addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- tell [1,2,3]

capital :: String -> String
capital "" = "Empty string, whoops!"
capital y@(x:xs) = "The first letter of " ++ y ++ " is " ++ [x]
-- bmiTell :: (Fractional a , Ord a, Num a) => a -> String
-- bmiTell bmi
--     | bmi <= 18.5 = "You're underweight, you emo, you!"
--     | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
--     | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
--     | otherwise   = "You're a whale, congratulations!"

bmiTell weight height = bmi
    where bmi = weight / height

-- add2 = [if 2 > 4 then 4 else 2,if 2 > 4 then 4 else 2, 4 ]

-- 1 : 2 : 3 : 4 : []]

-- [1, 2, 3]
-- reverse [2,3] ++ [1]
-- (reverse [3] ++ [2]) ++ [1]
-- [] ++ [3] ++[2] ++[1]
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWith4 :: (Num a) => a -> a -> a
-- multTwoWith4 x y = 4 * x * y
-- multTwoWith4 x y = multThree 4 x y
multTwoWith4 = multThree 4

addTwoNumbers :: Num a => a -> a -> a
addTwoNumbers x y = x+y

multWithSixteen :: (Num a) => a -> a
multWithSixteen = multTwoWith4 4


addTwoNumbersss :: Num a => a -> a -> a
-- addTwoNumbersss x y = addTwoNumbers x y
addTwoNumbersss = addTwoNumbers

add2 :: (Num a) => a -> a
add2 = (+) 2

applyTwice :: (a -> a) -> a -> a
applyTwice f x = x * x

flipT f a b = f b a
-- multTwoWith4 7 (multTwoWith4 7 5)