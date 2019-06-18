/*
oooooooooo.   #      .o.       #  .oooo.   #oooo    oooo #   #oooooooooo.   #ooooooooo.   #      .o.       #  .oooooo.    #  .oooooo.   #ooooo      ooo #
`|888'   `Y8b  #     .888.      #.dP""Y88b  #`888   .8P'  #   #`888'   `Y8b  #`888   `Y88. #     .888.      # d8P'  `Y8b   # d8P'  `Y8b  #`888b.     `8' #
 |888      888 #    .8"888.     #      ]8P' # 888  d8'    #   # 888      888 # 888   .d88' #    .8"888.     #888           #888      888 # 8 `88b.    8  #
 |888      888 #   .8' `888.    #    <88b.  # 88888[      #   # 888      888 # 888ooo88P'  #   .8' `888.    #888           #888      888 # 8   `88b.  8  #
 |888      888 #  .88ooo8888.   #     `88b. # 888`88b.    #   # 888      888 # 888`88b.    #  .88ooo8888.   #888     ooooo #888      888 # 8     `88b.8  #
 |888     d88' # .8'     `888.  #o.   .88P  # 888  `88b.  #   # 888     d88' # 888  `88b.  # .8'     `888.  #`88.    .88'  #`88b    d88' # 8       `888  #
|o888bood8P'   #o88o     o8888o #`8bd88P'   #o888o  o888o #   #o888bood8P'   #o888o  o888o #o88o     o8888o # `Y8bood8P'   # `Y8bood8P'  #o8o        `8  #
*/

/*
 
^1 = red
^2 = green
^3 = yellow
^4 = blue
^5 = cyan(light blue)
^6 = pink
^7 = white
^8 = Axis killfeed colour
^9 = Allies killfeed colour
^0 = Black
 
*/
 
 
 
init( modVersion )
{
	precachestring( &"^5faire play" );
	precachestring( &"^6Respect Rules ^1or ban" );
 
 
 
	if(isDefined(level.rulesText))
		level.rulesText destroy();
 
	level.rulesText = newHudElem();
	level.rulesText.x = 10;
	level.rulesText.y = 400;
	level.rulesText.alignX = "LEFT";
	level.rulesText.alignY = "TOP";
	level.rulesText.horzAlign = "LEFT";
	level.rulesText.vertAlign = "TOP";
	level.rulesText.alpha = 1;
	level.rulesText.sort = 10;
	level.rulesText.fontScale = 1.6;
 
	if(isDefined(level.rulesTitle))
		level.rulesTitle destroy();
 
	level.rulesTitle = newHudElem();
	level.rulesTitle.x = 10;
	level.rulesTitle.y = 400;
	level.rulesTitle.alignX = "LEFT";
	level.rulesTitle.alignY = "TOP";
	level.rulesTitle.horzAlign = "LEFT";
	level.rulesTitle.glowColor = (0.0, 0.0, 1.0);
	level.rulesTitle.glowAlpha = 1;
	level.rulesTitle.vertAlign = "TOP";
	level.rulesTitle.alpha = 1;
	level.rulesTitle.sort = 10;
	level.rulesTitle.fontScale = 1.5;
	level.rulesTitle setText("");
	for(;;)
	{
		level.rulesText setText("^6respect admins ");
		wait 5;
		level.rulesText setText("^4Server Ownered Clan :^2MSS|Community");
		wait 5;
		level.rulesText setText("^4fb/groups/tmxclan");
		wait 5;
		level.rulesText setText("^4Do ^1not hack");
		wait 5;
		level.rulesText setText("^2MATRIX");
		wait 5;
		level.rulesText setText("^1Dont ^1Advertise");
		wait 5;
		level.rulesText setText("^1Dont ^1Spam");
		wait 5;
	}
}