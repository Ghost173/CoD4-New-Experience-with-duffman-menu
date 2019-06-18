init( modVersion )
{
	for(;;)
	{
		level waittill("connected", player);
		player thread limitScopeTime();
	}
}

limitScopeTime( time )
{
	self endon( "disconnect" );
	if( !isDefined( time ) || time < 0.05 )
	time = 0.5;
	adsTime = 0;
	self iprintln("^5Anti^7-^5Hardscope^7: enabled");

	for( ;; )
	{
		currentweapon = self GetCurrentWeapon();
		if(currentweapon=="remington700_mp" || currentweapon=="m40a3_mp")
		{
			if( self playerAds() == 1)
				adsTime ++;
			else
				adsTime = 0;
			
			if( adsTime >= int( time / 0.05 ) )
			{
				adsTime = 0;
				self allowAds( false );
				
				while( self playerAds() > 0 )
				wait( 0.05 );
				self allowAds( true );
			}
		}
		wait( 0.05 );
	}
}