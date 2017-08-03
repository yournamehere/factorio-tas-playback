# factorio-tas-playback
TAS playback mod for factorio

## Installing the mod
* If using git : clone to `factorio/mods/tas_playback_0.0.1`
* If using an archive : Unpack the mod's contents into `factorio/mods/tas_playback_0.0.1`
* If using the mod portal (shouldn't be possible at the moment, but whatever) : Install the mod and unpack its contents. 


## Creating a run
To create a run : 
* Create a new folder `factorio/mods/tas_playback_0.0.1/scenarios/YourNewRunName/`
* Create a blueprint.dat file containing your run's map, like you would to create a scenario, and copy it into this folder. 
 To do that : 
	* Create a new game using your chosen map seed
	* Save this game without doing anything in the world
	* Exit factorio
	* From the console, navigate into the factorio's binary folder
	* Type the command `factorio --map2scenario mysave` (with mysave replaced by the name you used to save your map)
	* Copy the file `factorio/scenarios/mysave/blueprint.dat` into `factorio/mods/tas_playback_0.0.1/scenarios/YourNewRunName/`
	* You can now remove the folder `factorio/scenarios/mysave/` as well as your save with the empty world. 
* Copy the files `configuration.lua` and `control.lua` from the folder `factorio/mods/tas_playback_0.0.1/scenarios/Test-TAS/` 
 into `factorio/mods/tas_playback_0.0.1/scenarios/YourNewRunName/`
* Create the file that will contain the instructions for your run into the folder `factorio/mods/tas_playback_0.0.1/scenarios/YourNewRunName/`. 
 You can choose the name you want for this file. For example : `YourRunFile.lua`
* Open the file configuration.lua in a text editor and edit the run_name and run_file variables to contain the name of your run's scenario and of the file that contains the commands. 
In our case, we will have : 
```
run_name = "YourNewRunName"
run_file = "YourRunFile"
```
**__ATTENTION__ : These __MUST__ be the __EXACT__ names used as the folder name and the run's file name. Otherwise, the run will not work !**
* you can now start writing your run's commands into `YourRunFile.lua`. 

## Playing a run
To start playing the run : 
* In factorio menu, navigate to _Play_ -> _Scenarios_
* A scenario will appear as `tas_playback/YourNewRunName` (YourNewRunName being the name you used when you created the run's scenario, of course). Launch it. 
* If your run's configuration file contains `autorun = true`, the run will automatically start when loading the scenario. 
* If your run's configuration file contains `autorun = false`, you can use the chat command `/init_run` to start it at any moment. 
 Your player will be repositionned at the right location and your inventory reset. 
 Any modification that happened to the world since the game was started will, however, be kept. 
* You can at any point save the run. 
	* When you will reload it, the run will continue playing from the tick when it was saved.
	* Any modification that is made to the run between saving and loading and that happens after the tick where the game was saved will be taken into account. 

## Additional information
* The mod will not let you start a _New Game_ while it is active.
	* If you want to play a regular game, toggle the mod. 
	* If you want to play a TAS run, please use a scenario as instructed above. 
* Due to the way the mod loads the instructions for the run, the scenarios have to be located in the mod's folder and cannot be located in the standard scenarios folder. 
* The menu _Options_ -> _Mods_ gives you options about the level of verbosity you want when displaying what the run does. 
 
 
