# Custom Message to store the IMU data
uint64 timestamp # Timestamp of the message

float64[4] contact # [X+,X-,Y+,Y-]
float64 contactplanes # Number of Contact Planes
float64[4] state # [X+,X-,Y+,Y-] State Values
