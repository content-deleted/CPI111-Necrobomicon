/// @description Insert description here
// You can write your code in this editor
if (global.actor_allowUpdate)
{
	if (roomController.bombBag)
	{
		if (roomController.currentBombs > 0)
		{
			BombControl(roomController.currentBombType);
			roomController.currentBombs--;
		}
	}
	else
		BombControl(roomController.currentBombType);
}