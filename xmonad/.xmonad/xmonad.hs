import XMonad
import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Util.Run (spawnPipe)
import Data.List

myFont :: String
myFont = "xft:Monolia Mono:regular:size=9:antialais=true:hinting=true"

myTerminal :: String
myTerminal = "alacritty"

myModMask :: KeyMask
myModMask = mod4Mask

myBorder :: Dimension
myBorder = 1

myDefCol :: String
myDefCol = "#28c34"

myFocCol :: String
myFocCol = "#03638d"

main = do
    xmonad $ def
      {terminal = myTerminal,
       modMask = myModMask,
       borderWidth = myBorder,
       focusedBorderColor = myFocCol,
       normalBorderColor = myDefCol
      } `additionalKeys` 
       [
       ((mod4Mask, xK_f), spawn "brave"),
       ((mod4Mask, xK_x), spawn "xsecurelock")
       ] 
