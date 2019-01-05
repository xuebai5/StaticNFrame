BASEPATH=$(cd `dirname $0`; pwd)

do_work()
{
	ln -sdf $BASEPATH/NFPluginLoader $BASEPATH/$1$2
	#$cp NFPluginLoader $1 -rf
	#chmod a+x $1
	cp AllServer.sh $1$2_run.sh -rf
	chmod a+x $1$2_run.sh 
	cp AllServer_log.sh $1$2_log.sh -rf
	chmod a+x $1$2_log.sh
	sed -i "s/servername=NFPluginLoader/servername=$1$2/g" ./$1$2_run.sh
	sed -i "s/servertype=AllServer/servertype=$1/g" ./$1$2_run.sh
	sed -i "s/serverId=6/serverId=$2/g" ./$1$2_run.sh

	sed -i "s/AllServer6/AllServer$2/g" ./$1$2_log.sh
	sed -i "s/AllServer/$1/g" ./$1$2_log.sh

	touch Stop.sh
	chmod a+x Stop.sh
	echo "./$1$2_run.sh ss" >> Stop.sh

	touch Start.sh
	chmod a+x Start.sh
	echo "./$1$2_run.sh" >> Start.sh

	touch Clear.sh
	chmod a+x Clear.sh
	echo "rm $1$2 -rf" >> Clear.sh
	echo "rm $1$2_log.sh -rf" >> Clear.sh
	echo "rm $1$2_run.sh -rf" >> Clear.sh
}

do_work MasterServer 1
do_work LoginServer 2
do_work ProxyServer 3

do_work WorldServer 10
do_work GameServer 11

do_work RebotServer 20
do_work RebotServer 21
do_work RebotServer 22
do_work RebotServer 23
do_work RebotServer 24
do_work RebotServer 25
do_work RebotServer 26
do_work RebotServer 27
do_work RebotServer 28
do_work RebotServer 29
do_work RebotServer 30
do_work RebotServer 31
do_work RebotServer 32
do_work RebotServer 33

echo "rm Stop.sh -rf" >> Clear.sh
echo "rm Start.sh -rf" >> Clear.sh
echo "rm Clear.sh -rf" >> Clear.sh