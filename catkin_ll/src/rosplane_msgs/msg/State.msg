# Vehicle state 'x_hat' output from the estimator or from simulator 

Header header

# Original States
# @warning roll, pitch and yaw have always to be valid, the quaternion is optional
float32[3] position	# north, east, down (m)
float32 Va		# Airspeed (m/s)
float32 alpha		# Angle of attack (rad)
float32 beta		# Slide slip angle (rad)
float32 phi		# Roll angle (rad)
float32 theta		# Pitch angle (rad)
float32 psi		# Yaw angle (rad)
float32 chi		# Course angle (rad)
float32 p		# Body frame rollrate (rad/s)
float32 q		# Body frame pitchrate (rad/s)
float32 r		# Body frame yawrate (rad/s)
float32 Vg		# Groundspeed (m/s)
float32 wn		# Windspeed north component (m/s)
float32 we		# Windspeed east component (m/s)

# Additional States for convenience
float32[4] quat		# Quaternion (wxyz, NED)
bool quat_valid		# Quaternion valid
float32 chi_deg		# Wrapped course angle (deg)
float32 psi_deg		# Wrapped yaw angle (deg)
float32 initial_lat 	# Initial/origin latitude (lat. deg)
float32 initial_lon 	# Initial/origin longitude (lon. deg) 
float32 initial_alt 	# Initial/origin altitude (m) 


