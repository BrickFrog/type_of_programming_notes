-- Inductive recursion - reasoning around recursion as natural numbers
-- with zero as the base case

data Nat = Zero | Succ Nat

zero = Zero :: Nat
one = Succ Zero :: Nat
two = Succ (Succ Zero) :: Nat
three = Succ (Succ (Succ Zero)) :: Nat

{-
Example of Recursion to go from a "Nat" to Natural

fromNat :: Nat -> Natural
fromNat =
    case x of
        Zero -> 0
        Succ y -> 1 + fromNat y

-}


