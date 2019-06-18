#include duffman\_common;

init()
{
	level.delay = 20;
	level thread advertisement();
}

advertisement()
{	
	while(1)
	{
	
		level hudmsg("^0chek our other server :^345.32.113.186:28961");
	
		wait level.delay;
		
		level hudmsg("Welcome in ^1our server");
	
		wait level.delay;
	
		level hudmsg("^8Add in FAV our server CoD4^7 145.32.113.186:28960");
	
		wait level.delay;
		
		level hudmsg("^5join our fb group ^6fb/groups/tmxclan/");
		
		wait level.delay;
		
		level hudmsg("^3Recruitment Open!");
		
		wait level.delay;
		
		level hudmsg("^2MATRIX");
		
		wait level.delay;
	}
}

hudmsg(text) 
{
	msg = addTextHud( level, 750, 470, 1, "left", "middle", undefined, undefined, 1.6, 888 );
	msg SetText(text);
	msg.sort = 102;
	msg.foreground = 1;
	msg.archived = true;
	msg.alpha = 1;
	msg.fontScale = 1.5;
	msg.color = level.randomcolour;
	msg MoveHud(30,-1300);
	wait 20;
	msg destroy();
}