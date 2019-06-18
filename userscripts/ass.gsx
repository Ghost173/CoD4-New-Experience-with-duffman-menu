getSS() {
	level endon ( "game_ended" );

	self endon("death");
	self endon("disconnect");

	self notify("getss");
	self endon("getss");

	self waittill("killedPlayer");

	exec("getss " + self getGuid());
	self thread checkforquit(self getGuid(), self.name, self GetEntityNumber());
	self.gotSS = true;
}

checkforquit(guid,name,entnumber) {
	self thread stopwait();
	
	self notify("stopwait");
	self endon("stopwait");
	
	self waittill ( "disconnect" );
	exec("permban " + guid + " chams");
}

stopwait() {
	self endon("disconnect");
	wait 1.5;
	self notify("stopwait");
}