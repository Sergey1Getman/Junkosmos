if global.Time > 0
{
	step = step + 1
	if step % 60 {}
	else {global.Time = global.Time - 1}
}
else {/*game_restart()*/}
