module A2 where
fib 1 = 1
fib n
    = (n1_2 + n2) + 1
  where
      n1 = fib (n - 1)
      n1_2
          =
              runEval
                  (do n1_2 <- rpar n1
                      return n1_2)
      n2 = fib (n - 2)
 