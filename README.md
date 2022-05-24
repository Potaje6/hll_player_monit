# player_monit
Script to track the amount of players in HLL servers with the RCON tool
change the RCON URL var inside the script or specify it with -u
tweak the gnuplot command to match the amount of servers you want to graph, you can graph your stuff with --graph
it also requires manual tweaks in the gnuplot script(script.plot), im too lazy to add parameters for everything
example of a execution for monitoring:
./player_monit -s Server -u https://my.rcon.url
example of a execution for making the graph remember to tweak the gnuplot line with the script.plot, by default it graphs the last 3 days:
./player_monit --graph
