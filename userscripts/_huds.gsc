/* 

▒█▀▀█ ▒█░░▒█ ░█▀▀█ 
▒█░▄▄ ▒█▒█▒█ ▒█▄▄█ 
▒█▄▄█ ▒█▄▀▄█ ▒█░▒█ 

 */
init()
{
	level.hud_Y = 0;
	level.hud_Y_offset = 13;
	thread players();
}


players()
{
	while(1)
	{
		level waittill( "connected", player );
		player.killstreak = 0;
		//player thread headshots();
		//player thread killstreak();
		player thread kills();
		player thread deaths();
		player thread name();
		player thread gtguid();
		
	}
}

headshots()
{
	self endon( "disconnect" );
	level endon ("vote started");
	self.hudhs = newClientHudElem(self);
	self.hudhs.x = 110;
	self.hudhs.y = level.hud_Y + (1*level.hud_Y_offset);
	self.hudhs.horzAlign = "left";
	self.hudhs.alignx = "left";
	self.hudhs.fontscale = 1.4;
	self.hudhs.hidewheninmenu = true;
	self.hudhs.label = &"^2Headshots :^1 &&1";
	self.hudhs fadeOverTime(.5);
	self.hudhs.alpha = 1;
	self.hudhs.glowAlpha = 1;
	self.hudhs.glowColor = (0.3, 0.3, 0.3);
	
	while(isDefined(self.headshots) && isDefined(self.hudhs))
	{
		self.hudhs setValue(self.headshots);
		wait .5;
	}
}

killstreak()
{
	self endon( "disconnect" );
	level endon ("vote started");
	self.hudkillstreak = newClientHudElem(self);
	self.hudkillstreak.x = 110;
	self.hudkillstreak.y = level.hud_Y + (2*level.hud_Y_offset); 
	self.hudkillstreak.alignx = "left";
	self.hudkillstreak.horzAlign = "left";
	self.hudkillstreak.fontscale = 1.4;
	self.hudkillstreak.label = &"^2Killstreak :^1 &&1";
	self.hudkillstreak fadeOverTime(.5);
	self.hudkillstreak.hidewheninmenu = true;
	self.hudkillstreak.alpha = 1;
	self.hudkillstreak.glowAlpha = 1;
	self.hudkillstreak.glowColor = (0.3, 0.3, 0.3);
	
	while(isDefined(self.killstreak) && isDefined(self.hudkillstreak))
	{
		self.hudkillstreak setValue(self.killstreak);
		wait .5;
	}
}

kills()
{
	self endon("disconnect");
	self.hudkills = newClientHudElem(self);
	self.hudkills.alignx = "left";
	self.hudkills.horzAlign = "left";
	self.hudkills.x = 110;
	self.hudkills.y = level.hud_Y + (3*level.hud_Y_offset); 
	self.hudkills.fontscale = 1.4;
	self.hudkills.label = &"Kills : &&1";
	self.hudkills fadeOverTime(.5);
	self.hudkills.hidewheninmenu = true;
	self.hudkills.alpha = 1;
	self.hudkills.glowAlpha = 1;
	self.hudkills.glowColor = (0.1, 0.1, 1.5);
	self.hudkills.color = (0.1, 0.5, 1.9);
	
	while(isDefined(self.hudkills) && isDefined(self.kills))
	{
		self.hudkills setValue(self.kills);
		wait .5;
	}
}

deaths()
{
	self endon("disconnect");
	self.huddeaths = newClientHudElem(self);
	self.huddeaths.alignx = "left";
	self.huddeaths.horzAlign = "left";
	self.huddeaths.x = 110;
	self.huddeaths.y = level.hud_Y + (4*level.hud_Y_offset); 
	self.huddeaths.fontscale = 1.4;
	self.huddeaths.label = &"Deaths : &&1";
	self.huddeaths fadeOverTime(.5);
	self.huddeaths.hidewheninmenu = true;
	self.huddeaths.alpha = 1;
	self.huddeaths.glowAlpha = 1;
	self.huddeaths.glowColor = (0.1, 0.1, 1.5);
	self.huddeaths.color = (0.1, 0.5, 1.9);
	
	while(isDefined(self.huddeaths) && isDefined(self.deaths))
	{
		self.huddeaths setValue(self.deaths);
		wait .5;
	}
}

name()
{
	self.nameHud = NewClientHudElem(self);
	self.nameHud.x = 110;
	self.nameHud.y = level.hud_Y + (6*level.hud_Y_offset); 
	self.nameHud.alignx = "left";
	self.nameHud.horzAlign = "left";
	self.nameHud.alignX = "left";
	self.nameHud.alignY = "middle";
	self.nameHud.fontscale = 1.4;
	self.nameHud setText("Player Name: ^1" +self.name);
	self.nameHud.hidewheninmenu = true;
	self.nameHud.hidewheninmenu = true;
}

gtguid()
{
	self.guidHud = NewClientHudElem(self);
	self.guidHud.x = 110;
	self.guidHud.y = level.hud_Y + (7.2*level.hud_Y_offset); 
	self.guidHud.alignx = "left";
	self.guidHud.horzAlign = "left";
	self.guidHud.alignX = "left";
	self.guidHud.alignY = "middle";
	self.guidHud.fontscale = 1.4;
	guid = GetSubStr(self getGuid(), self getGuid().size - 8, self getGuid().size);  
	self.guidHud setText("GUID: ^3" + guid);
	self.guidHud.hidewheninmenu = true;
	self.guidHud.hidewheninmenu = true;
}