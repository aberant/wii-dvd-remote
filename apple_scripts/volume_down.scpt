-- get current volume level
set curVolume to output volume of (get volume settings)
-- work out the new setting
if curVolume > 10 then
	set newVolume to curVolume - 10
else
	-- can't go lower than 1
	set newVolume to 1
end if
-- and apply it
set volume output volume newVolume