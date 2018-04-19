#fix camera not working
function fixCamera() {
	sudo killall VDCAssistant
	sudo killall AppleCameraAssistant
}

function fixovpn(){
	sudo kextunload -b net.sf.tuntaposx.tap
	sudo kextunload -b net.sf.tuntaposx.tun
}

function fixbt(){
#	echo "off"
#	sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 0
#	echo "wait 1"
#	sleep 1
#	echo "on"
#	sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 1
#	echo "done"
	defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 58 
	defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 40 
	defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 40 
	defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 58 
	defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 58 
	defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 40
	defaults read com.apple.BluetoothAudioAgent
	resetbt
}

function resetbt(){
	echo "off"
	sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 0
	echo "wait 1"
	sleep 1
	echo "on"
	sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist ControllerPowerState 1
	echo "done"
}
