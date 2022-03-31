-- Chapter 5 excercises

> x = 5


1. Functions:
a) not :: Bool -> Bool
b) length :: [a] -> Int
c) concat :: [[a]] -> [a]
d) head :: [a] -> a
e) (<) :: Ord a => a -> a -> Bool
-- Copied and pasted


-- 1.
let f :: a -> a -> a -> a; f = undefined
-- a -> (a -> (a -> a))
let x :: Char; x = undefined
:t f x
f x :: Char -> Char -> Char -- Result

-- 2.
let g :: a -> b -> c -> b; g = undefined
-- a -> (b -> (c -> b))
:t g 0 'c' "woot" 
g 0 'c' "woot" :: Char -- Result

-- 3.
let h :: (Num a, Num b) => a -> b -> b; h = undefined
-- a -> (b -> b)
:t h 1.0 2
h 1.0 2 :: Num b => b

-- 4. 
let h :: (Num a, Num b ) => a -> b -> b; h = undefined
-- a -> (b -> b)
:t h 1 (5.5 :: Double)
h 1 (5.5 :: Double) :: Double -- result

-- 5.
let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
-- a -> (b -> a)
:t jackal "Keyboad" "Has the work Jackal in it"
jackal "Keyboad" "Has the work Jackal in it" :: [Char] -- result

-- 6.
let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
-- a -> (b -> a)
:t jackal "Keyboad"
jackal "Keyboad" :: Eq b => b -> [Char] -- result

-- 7.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel 1 2
kessel 1 2 :: (Ord a, Num a) => a -- result

-- 8.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel 1 (2 :: Integer)
kessel 1 (2 :: Integer) :: (Ord a, Num a) => a -- result

-- 9.
let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- a -> (b -> a)
:t kessel (1 :: Integer)
kessel (1 :: Integer) :: b -> ( 1 : Integer)
kessel (1 :: Integer) :: Num b => b -> Integer -- result


-----------------------------------------------------





-- 1. -- Type signature of general function
-- (++) :: [a] -> [a] -> [a]
-- -- How might that change when we apply
-- -- it to the following value?
myConcat x = x ++ " yo"

-- the types will be 
-- myConcat :: [Char] -> [Char] -> [Char]


-- 2. -- General function
-- (*) :: Num a => a -> a -> a
-- -- Applied to a value
myMult x = (x / 3) * 5
-- myMult :: Fractional -> Fractional -> Fractional
-- Could be better described here
myMult :: Fractional a => a -> a

-- 3. take :: Int -> [a] -> [a]
myTake x = take x "hey you"
myTake :: [Char] a => a -> a -- wrong
myTake :: Int -> [Char]

-- 4. (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
myCom :: Int -> Bool -- lets goooooooo

-- 5. (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
myAlph :: Char -> Bool -- Yesssss boiiii


-----------------------------------------------------
Final chapter excercises - page 163

Multiple choice
1. A value of type [a] is
a) a list of alphabetic characters
b) a list of lists
Xc) a list whose elements are all of some type 𝑎
d) a list whose elements are all of different types

2. A function of type [[a]] -> [a] could
Xa) take a list of strings as an argument
b) transform a character into a string
c) transform a string in to a list of strings
d) take two arguments

3. A function of type [a] -> Int -> a
a) takes one argument
Xb) returns one element of type 𝑎 from a list
c) must return an Int value
d) is completely fictional

4. A function of type (a, b) -> a
a) takes a list argument and returns a Char value
b) has zero arguments
Xc) takes a tuple argument and returns the first value
d) requires that 𝑎 and 𝑏 be of different types

> bigNum = (^) 5 10
> wahoo = bigNum * 10

> functionH :: [a] -> a
> functionH (x:_) = x


> functionC :: Ord a => a -> a -> Bool
> functionC x y = if (x > y) then True else False

functionS :: (a, b) -> b
> functionS (x, y) = y
