# This message expresses a Superellipsoid shape in a 3D environment with translation and rotation

Header header

# Superellipsoid Definition:
# This message uses the following Superellipsoid implicit equation in https://doi.org/10.1109/ICRA.2016.7487394 as follows;
#                                           
#                             e             
#                              2            
#                             --            
#                             e        2    
#                              1      --    
#              /    2       2\        e     
#              |   --      --|         1    
#              |   e       e |     |z|      
# f(x, y, z) = |    2       2|   + |-|   = 1
#              ||x|     |y|  |     |c|      
#              ||-|   + |-|  |              
#              \|a|     |b|  /              
#                                           
#                                           
#                                           
# Another implicit equation is used in https://en.wikipedia.org/wiki/Superellipsoid with replacing e1 and e2:
#                                           
#      2                  2                 
# r = --     and     t = --                 
#     e                  e                  
#      2                  1                 
#                                           
#                                           
#                           t               
#                           -               
#                           r               
#              /   r      r\       t        
#              ||x|    |y| |    |z|         
# f(x, y, z) = ||-|  + |-| |  + |-|  = 1    
#              \|a|    |b| /    |c|         
#                                           
#                                           
float64 a
float64 b
float64 c
float64 e1
float64 e2

# Translation
float64 x
float64 y
float64 z

# Orientation in a frame consistent with the right-handed NED coordinate frame
float64 roll    # Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.
float64 pitch   # Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.
float64 yaw     # Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.

# Volume is computed using the formula in https://en.wikipedia.org/wiki/Superellipsoid
#
#     ⎛2⎞               ⎛  4  ⎞     ⎛1  1⎞     ⎛2  1⎞
# V = ⎜─⎟ ⋅ a ⋅ b ⋅ c ⋅ ⎜─────⎟ ⋅ β ⎜─, ─⎟ ⋅ β ⎜─, ─⎟
#     ⎝3⎠               ⎝r ⋅ t⎠     ⎝r  r⎠     ⎝t  t⎠
#
float64 volume # in cubic meter