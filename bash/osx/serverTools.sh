#/bin/bash

function startserver() {
	for i in `seq 1 10`;
	do
		wakeonlan -i 192.168.1.255 -p 7 8C:89:A5:E1:96:C7
	done
	echo "wake up 8C:89:A5:E1:96:C7"
}
function stopserver() {
  echo "bar"
}

function ensureWOL(){
	HAS_WOL=`which wakeonlan`
	if [ "$HAS_WOL" = "" ]; then
		echo "install wakeonlan with brew install wakeonlan";
		return 0;
	else
		return 1;
	fi
}

