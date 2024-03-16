# cs2-viewangles

### [YouTube video](https://youtu.be)
### [Join the community](https://t.me/precache)

## 
<img src="#" alt="Screenshot" style="width: 50%">

### How does it work?
CS2 has an unprotected command which allows to constantly print viewangles to the console. To display this information on the phone without any executables running on the PC you need to LAN share a CS2 folder first and launch the game with `-condebug` parameter which allows you to dump everything from the console to a file in the CS2 directory, in our case to a LAN shared folder. After this I'm jest reading the last line of that file in a loop with a bash script from iSH.

### What are the use cases?
Airstucks, pixelsurfs and grenade lineups

### Setup
1. PC-> Run precache.bat, click "E" to enable folder sharing
2. IOS-> Go to the files app, tap on the 3 dots in the top-right corner and tap "Connect to Server"
3. IOS-> Enter the server details displayed by the precache.bat and tap Connect
4. IOS-> Run iSH app on your phone
5. IOS-> Execute this command: `wget https://raw.githubusercontent.com/ho9/cs2-viewangles/main/source-code/mobile/viewangles.sh` (If you dont have wget, install it with `apk add wget`)
6. PC-> Load into a map in CS2
7. IOS-> Run the script with this command: `./viewangles.sh`
8. IOS-> Tap on the server ip->exploit and tap "Open" 
9. Enjoy viewangles without any executables running on the PC
   
### Disabling
1. IOS-> Close the iSH app and disconnect from the server in the files app
2. PC-> Run precache.bat, click "D" to disable folder sharing
3. PC-> In CS2 console type `exec reset`
<hr>
