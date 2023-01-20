class KnownToGork a where
    stomp :: a -> a
    doesEnrageGork :: a -> Bool

class KnownToMork a where
    stab :: a -> a
    doesEnrageMork :: a -> Bool

class (KnownToGork a, KnownToMork a) => KnownToGorkAndMork a where
    stompOrStab :: a -> a
    stompOrStab x = if doesEnrageGork x && doesEnrageMork x then stomp $ stab x else
      if doesEnrageGork x then stab x else if doesEnrageMork x then stomp x else x
