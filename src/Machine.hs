module Machine
(      
        Vname,
        Val,
        State,
        Instr (..),
        Stack,
        Config,
        iexec,
        exec
) where

import Data.Map

class LOADL v => Val a where
        loadl :: a -> Stack
        loadl a = Stack++[a]

class LOAD v => State a where
        load :: a -> Stack
        load a = Stack++[a]

class ADD where
        add :: Stack -> Int
        add (x:xs) = x + xs!!0

class STORE v => State a where
        store :: State -> Stack
        store a = Stack++[a]

class JMP i => Int where
        jmp :: Int -> Int -> Int
        jmp a i = a+i

class JMPLESS i => Int where
        jmpless :: Stack -> Int -> Bool
        jmpless x i |  x!!0 > x!!1 = True
                    |  otherwise = False
 
class JMPGE i => Int where
        jmpge :: Stack -> Int -> Bool
        jmpge x i |  x!!0 <= x!!1 = True
                    |  otherwise = False

type Vname = String

type Val = Int

type State = Map(Vname,Val)

data Instr =
        LOADl |
        LOAD |
        ADD |
        STORE |
        JMP |
        JMPLESS |
        JMPGE |
        IUndefined 
        deriving (Eq, Read, Show)


type Stack = [Int]

type Config = (Int, String, [Int])

iexec :: Instr -> Config -> Config
iexec instr config 

exec :: [Instr] -> Config -> Config
exec (instr:list) config 