#!/bin/bash
#Menu
cd
clear
echo ""
# Output of results
	echo "System Info" | tee -a $HOME/bench.log
	echo "-----------" | tee -a $HOME/bench.log
	echo "Processor	: $cname" | tee -a $HOME/bench.log
	echo "CPU Cores	: $cores" | tee -a $HOME/bench.log
	echo "Frequency	: $freq MHz" | tee -a $HOME/bench.log
	echo "Memory		: $tram MB" | tee -a $HOME/bench.log
	echo "Swap		: $vram MB" | tee -a $HOME/bench.log
	echo "Uptime		: $up" | tee -a $HOME/bench.log
	echo "" | tee -a $HOME/bench.log
	echo "OS		: $opsy" | tee -a $HOME/bench.log
	echo "Arch		: $arch ($lbit Bit)" | tee -a $HOME/bench.log
	echo "Kernel		: $kern" | tee -a $HOME/bench.log
	echo "Hostname	: $hn" | tee -a $HOME/bench.log
	echo "" | tee -a $HOME/bench.log
	echo "" | tee -a $HOME/bench.log
  

echo -e "===========  WELCOME to RAYMUND1719.PH AutoScript  ================="
echo -e ""
echo -e "\033[1;31m  1\033[0m) Create new user              |   (name, pass, days) "
echo -e "\033[1;31m  2\033[0m) User renew                   |   (name, days extended) "  ##6 originally
echo -e "\033[1;31m  3\033[0m) Create trial account         |   (user trial) "           ##2 originally
echo -e "\033[1;31m  4\033[0m) Delete user account          |   (Delete user) "          ##7 originally 
echo -e "\033[1;31m  5\033[0m) Lock user account            |   (Block user) "           ##11 originally 
echo -e "\033[1;31m  6\033[0m) Unlock user account          |   (Unblock user) "         ##12
echo -e "\033[1;31m  7\033[0m) User account list            |   (all users' list) "       ##4
echo -e "\033[1;31m  8\033[0m) User expire list             |   (user expire list)  "     ##10
echo -e "\033[1;31m  9\033[0m) Change user password         |   (change pass of user) "   ##5
echo -e "\033[1;31m 10\033[0m) Generate user account        |   (fast create user-pass) " ##3
echo -e "\033[1;31m 11\033[0m) Manual Kill multilogin       |   (user limit to 1) "  ##14
echo -e "\033[1;31m 12\033[0m) User active list             |   (user active list) "  #13
echo -e "\033[1;31m 13\033[0m) Disable user expire          |   (user no expiry) " ##8
echo -e "\033[1;31m 14\033[0m) Delete user expire           |   (Delete expired user/s) " ##10
echo -e "\033[1;31m 15\033[0m) Total used RAM               |   (User Data USed) "
echo -e "\033[1;31m 16\033[0m) Restart all service"
echo -e "\033[1;31m 17\033[0m) Speedtest VPS      "
echo -e "\033[1;31m 18\033[0m) Benchmark          "
echo -e "\033[1;31m 19\033[0m) VPS system info"
echo -e "\033[1;31m 20\033[0m) Info script auto install     | (Auto install script info) "
echo -e "\033[1;31m 21\033[0m) Reboot server                | (Reboot server) "
echo -e ""
echo  "PLEASE ENTER YOUR OPTION NUMBER: "

