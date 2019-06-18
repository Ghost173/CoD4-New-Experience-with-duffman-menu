Main() 
{
	thread Rules();
}

Rules()
{
level endon("disconnect");

	if( isDefined( level.logoText ) )
		level.logoText destroy();

	level.logoText = newHudElem();
	level.logoText.y = 12;
	level.logoText.alignX = "center";
	level.logoText.alignY = "middle";
	level.logoText.horzAlign = "center_safearea";

	level.logoText.alpha = 0;
	level.logoText.sort = -3;
	level.logoText.fontScale = 1.8;
	level.logoText.archieved = true;

	for(;;)
	{
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^3After ^55000kill ^3you can be admin here");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^5join our fb group and give your supports");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^5ZOMBIE ^645.32.113.186:28961");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^6view screen shots ^5http://45.32.113.186/");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^5chek FFA server ^645.32.113.186:28962");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^5this server mange my ^6MSS community");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^2our discord ^5https://discord.gg/C6xzhM6 ");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^6No Glitc !");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^1>>> ^2Respect Admins^5! ^1<<<");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 1;
		level.logoText setText("^1>>> ^1Dont ^2Abuse Any One we All ^3Brothers^5! ^1<<<");
		wait 5;
		level.logoText fadeOverTime(1);
		level.logoText.alpha = 0;
		wait 1;
	}
}