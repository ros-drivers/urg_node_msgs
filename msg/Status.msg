# Normal vs setting in the UAM manual.
uint16 NORMAL=0
uint16 SETTING=1
uint16 operating_mode

# The configured area number the stop occurred in.
uint16 area_number
# If the laser is reporting an error or not.
bool error_status
# The error code the laser is reporting.
uint16 error_code
# Does the laser report that it is locked out.
bool lockout_status
# State of the different warning and safety zones
bool ossd_1
bool ossd_2
bool warning_1
bool warning_2
bool ossd_3
bool ossd_4
# Distance in mm the stop was reported at.
uint16 distance
# The reported angle of the stop in deg.
float32 angle
