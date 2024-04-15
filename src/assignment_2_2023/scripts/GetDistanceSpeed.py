#!/usr/bin/env python


"""
.. module::GetDistanceSpeed
   
   :platform:Unix
   :synopsys: This Python file calculates the distance between the current position of the robot and the goal, as well as the average speed of the robot. First, we import the necessary libraries. Then, we define a class named "LastTargetNode". Subsequently, we subscribe to messages "Goal" and "Pos_Vel" to obtain the value of the goal and the robot's current position and velocity. Using these values, we calculate the distance between the goal and the robot's current position, as well as the robot's average speed, by applying basic computations
   
.. module author:: Dikshant Thakur dikshantthakur12@gmail.com


Subscribes to:
	target_data
	robot_data

	
"""

import rospy
from assignment_2_2023.srv import LastStatus
from assignment_2_2023.msg import Goal, Pos_Vel
from nav_msgs.msg import Odometry


class LastTargetNode:
    def __init__(self):
        """
        Initialize the LastTargetNode instance.
        
        It sets up a service called 'robot_status' to retrieve the last status of the robot, and it also initializes a subscriber for the topic 'target_data' which contains messages of type 'Goal'. This 		message encapsulates user input values, and 'goal_callback' is the associated callback function.
        
        Additionally, there is another subscriber for the topic 'robot_data', which contains messages regarding the robot's current position and velocity. This data is handled by the 'botinfo_callback' 		function
        
        Furthermore, we initialize an empty list to store the robot speeds and a variable to track the robot's position. 
        """
        rospy.init_node('status_node')

        # set default value of parameter '/window_size' 
        #self.window_size = rospy.get_param('window_size', 10)

        # set service and callback function
        self.robot_status = rospy.Service('/robot_status', LastStatus, self.robot_status)

        # set subscriber
        rospy.Subscriber('/target_data', Goal, self.goal_callback)
        rospy.Subscriber('/robot_data', Pos_Vel, self.botinfo_callback)


        # list of speed
        self.robot_speeds = []

        # initialize the robot's position
        self.bot_position = None

        rospy.spin()

    def goal_callback(self, target_msg):
        """ 
	Callback function to handle the reception of goal position data.
	
	This function is called whenever a message containing goal position data is received on the 'target_data' topic. The parameter 'target_msg' represents the received message.
	
	Parameters:
		target_msg (Goal): A message containing goal position data.
	
	Returns:
		None
        """
        
        self.GoalPosition = (target_msg.target_x, target_msg.target_y)
        
    def botinfo_callback(self, Pos_Vel_msg):
    	"""
    	Callback function for processing robot position and velocity data
    	
    	This function is invoked whenever a message is received on the 'robot_data' topic, containing information about the robot's position and velocity. The parameter 'Pos_Vel_msg' represents the message 		received on that topic.
    	
    	Parameters:
    		Pos_Vel_msg (Pos_Vel): Message containing robot position and velocity data.
    		
    	Returns:
    		None
    	"""
    	self.bot_position = (Pos_Vel_msg.robpos_x, Pos_Vel_msg.robpos_y)
    	robspeed = (Pos_Vel_msg.robvel_x**2 + Pos_Vel_msg.robvel_y**2)**0.5
    	self.robot_speeds.append(robspeed)    
    	
    def robot_status(self):
    	"""
    	Calculate average speed and distance to the goal.
    	
    	This function calculates the average speed of the robot and the distance between its current position and the goal position. 
	If the goal position and robot position are available, the function computes the Euclidean distance between them to determine the distance to the goal. In case either the goal position or robot 		position is not available, it logs a warning message and sets the distance to zero as a fallback.
	
	To determine the average speed, the function examines the recent velocity data stored in the list (robot_speed). It calculates the average speed on the basis of that data ensuring that the 	   		calculation is based on recent and relevant data. If no velocity information is available, it logs a warning message and sets the average speed to zero.
	
	
	Returns:
        	tuple: A tuple containing the average speed and the distance to the goal.
    	"""
    	# calculate the distance
    	if hasattr(self, 'GoalPosition') and hasattr(self, 'bot_position'): 
    	    distance_to_target = ((self.GoalPosition[0] - self.bot_position[0])**2 + 
    	                          (self.GoalPosition[1] - self.bot_position[1])**2)**0.5
    	else:
    	    rospy.logwarn("Target or robot position not available.")
    	    distance_to_target = 0.0
    	
    	if len(self.robot_speeds) > 0:
    	    average_speed = sum(self.robot_speeds[-self.window_size:]) / len(self.robot_speeds[-self.window_size:])
    	else:
    	    rospy.logwarn("No robot speed information available.")
    	    average_speed = 0.0        
    	return average_speed, distance_to_target
if __name__ == "__main__":
    try:
        status_node = LastTargetNode()
    except rospy.ROSInterruptException:
        pass
