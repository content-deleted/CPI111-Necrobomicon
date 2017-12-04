/// @description Insert description here
// You can write your code in this editor
if(isLightSwitch)
{
	var lightsOffAlpha = .9;
	if (flipped)
	{
		if (roomController.currentDarkAlpha != .3)
		{
			lightsOffAlpha = roomController.currentDarkAlpha;
			roomController.currentDarkAlpha = .3;
		}
	}
	else
	{
		if (roomController.currentDarkAlpha != lightsOffAlpha)
			roomController.currentDarkAlpha = lightsOffAlpha;
	}
}