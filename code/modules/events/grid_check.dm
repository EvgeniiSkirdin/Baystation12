/datum/event/grid_check	//NOTE: Times are measured in master controller ticks!
	announceWhen		= 5

/datum/event/grid_check/start()
	power_failure(0, severity, affecting_z)

/datum/event/grid_check/announce()
	priority_announcement.Announce(replacetext_char(GLOB.using_map.grid_check_message, "%STATION_NAME%", station_name()), "Автоматическая Проверка Энергосети", new_sound = GLOB.using_map.grid_check_sound, zlevels = affecting_z)
