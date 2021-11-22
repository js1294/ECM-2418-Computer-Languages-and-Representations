module Interpreter
(
    AExp(..),
    BExp(..),
    Com (..),
    aval,
    bval,
    eval
) where

import Data.Map
import Machine

--TODO Task 2.1
data AExp =
    Aundefined
    deriving (Eq, Read, Show)

--TODO N x Denotes an integer x.

--TODO V v Denotes a variable named v.

plus :: Int -> Int -> Int
plus x y = x + y

bc :: Bool -> Bool
bc x = x

not :: Bool -> Bool
not True = False
not False = True

and :: Bool -> Bool -> Bool
and True True = True 
and _ _ = False

less :: Int -> Int -> Bool
less x y | x > y = False 
         | otherwise = True

--TODO Task 2.2
aval :: AExp -> State -> Val
aval = undefined 

--TODO Task 2.1
data BExp =
    Bundefined
    deriving (Eq, Read, Show)

--TODO Task 2.3
bval :: BExp -> State -> Bool
bval = undefined 

--TODO Task 2.1
data Com =
    Cundefined
    deriving (Eq, Read, Show)

--TODO Task 2.4
eval :: Com -> State -> State
eval = undefined