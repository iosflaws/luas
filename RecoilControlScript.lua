--[[ ⠀⠀

          .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                     `'      9XXXXXX(   )XXXXXXP      `'
                              XXXX X.`v'.X XXXX
                              XP^X'`b   d'`X^XX
                              X. 9  `   '  P )X
                              `b  `       '  d'
                               `             '

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

                                    R E C O I L  C O N T R O L  S C R I P T  (R C S)  V 2 . 1  b y  @ m j z t  o n  Y O U T U B E





Patch Notes for Version 2.1:
    Removed Rapid-Fire
    Removed Bloom-Reduction

Possible Future Features:
  Require ADS (If set to false, it'll continue, without the need of ADS'ing)
--]]




---                              R E C O I L  C O N T R O L                               ----


EnableRCS = true --- When Set to false, it'll turn off Recoil Control!

RecoilControlMode = "Medium" --- Presets: "Low", "Medium", "High", "Ultra", "Insanity", "Custom"

RcCustomStrength = 7 -- Value MUST be ROUNDED! No Decimal values such as 6.5!

RequireToggle = true -- Change to false if you want it to always be on.

ToggleKey = "CapsLock" -- Usable Keys: "CapsLock", "NumLock", "ScrollLock"

DelayRate = 7 -- DO NOT CHANGE IF YOU DON'T KNOW WHAT YOU'RE DOING.






--[[
       HOW TO USE FOR DUMBIES, 
  (RC)
1: If the  "EnableRCS" is set to false, change to true.
2: Adjust your Recoil Control Strength, either by using a preset or a custom value!
3: Toggle it on (if you have ForceToggle enabled, else just do step 4.)
4: Hold Mouse1 and Mouse2 (LeftClick and RightClick) and it should drag your cursor downwards.
5: Aim at your target and your done!




(Things to note)
1: I did NOT make the Recoil Control Code, I just simplified everything, so you can adjust it to your needs
2: You don't need to hold down your toggle key, its a toggle.
3: You must hold mouse1 and mouse2, or else IT WONT WORK!
4: DelayRate Works in MS, the lower the faster. 7ms = 0.07s, 2000ms = 2s. However the preset Delay rate is perfect for most FPS games. 
--]]








-------------  Recoil Presets ------
if RecoilControlMode == "Low" then
  RecoilControlStrength = 2
elseif RecoilControlMode == "Medium" then
  RecoilControlStrength = 6
elseif RecoilControlMode == "High" then
  RecoilControlStrength = 8
elseif RecoilControlMode == "Ultra" then
  RecoilControlStrength = 12
elseif RecoilControlMode == "Insanity" then
  RecoilControlStrength = 31
elseif RecoilControlMode == "Custom" then
  RecoilControlStrength = RcCustomStrength
end
--------------------------------------



OutputLogMessage("@mjzt on Youtube!\n")
EnablePrimaryMouseButtonEvents  (true);
function OnEvent(event,arg)
if EnableRCS ~= false then
if RequireToggle ~= false then
    if IsKeyLockOn(ToggleKey)then
        if IsMouseButtonPressed(3)then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(0,RecoilControlStrength)
                        Sleep(DelayRate)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
    
else 

        if IsMouseButtonPressed(3)then
            repeat
                if IsMouseButtonPressed(1) then
                    repeat
                        MoveMouseRelative(0,RecoilControlStrength)
                        Sleep(DelayRate)
                    until not IsMouseButtonPressed(1)
                end
            until not IsMouseButtonPressed(3)
        end
    end
else 
end  
end
