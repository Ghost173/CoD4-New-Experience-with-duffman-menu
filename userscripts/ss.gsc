init() {
	
    level endon("game_ended");

    while(1) {

        wait 240; // 8 minutes
		
        bestscore = 0;
        sumscore = 0;
        count = 0;
		
        players = getEntArray("player","classname");

        for(i=0; i<players.size; i++) {

            if (players[i].pers["score"] > 0) {

                if (players[i].pers["score"] > bestscore ) {

                    bestscore = players[i].pers["score"];
                }

                sumscore += players[i].pers["score"];
                count++;
            }
        }

        if (count > 0 && sumscore > 0) {

            averagescore = sumscore / count;

            countscore = bestscore - (averagescore / 2);

            for(i=0; i<players.size; i++) {

                if (players[i].pers["score"] > countscore) {

                    if ( players[i] getGuid() != "0") {

                        exec("getss " + players[i] getGuid());
                    }
          
                    wait 1;
                }
			}
        }
    }
}