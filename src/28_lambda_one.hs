
data Expr
    = Lam String Expr
    | App Expr Expr
    | Var String

-- Similar to identity function, simply applies to itself, as an example

exprID :: Expr
exprID = Lam "x" (Var "x")

id = \x -> x


