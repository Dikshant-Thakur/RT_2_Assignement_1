#!/usr/bin/env python
"""
.. module::GetLastTarget
   
   :platform:Unix
   :synopsys: This file provides you with the last target position set by the user. 
   
.. module author:: Dikshant Thakur dikshantthakur12@gmail.com


Subscribes to:
    info    
"""

import rospy
from assignment_2_2023.srv import GetTrgtPos, GetTrgtPosResponse
from assignment_2_2023.msg import Goal

class GetLastTarget:
    def __init__(self):
        """
        Initialize the GetLastTarget instance.

        This function initializes the ROS node named 'get_last_target' and sets up
        a service 'target_info' to retrieve the last target position. It also subscribes
        to the topic 'info' to receive messages of type 'Goal', which contain information
        about the latest goal position. 

        Parameters:
            None

        Returns:
            None
        """
        rospy.init_node('get_last_target')


        rospy.spin()

    def get_last_target_position(self, request):
    
        """
        Callback function to handle the request to get the value of last target.
        
        This function is called when a request is made to the 'target_info' service.
        It checks if the latest goal message is available, and if so, it constructs
        and returns a response containing the target position.
        
        Parameters:
        	request (GetTrgtPos) : The request made to the service
            
        Returns:
    
        	response (GetTrgtPosResponse) : A response containing the last target position
            
        """
        
        if self.latest_goal_msg is not None:
            response = GetTrgtPosResponse()  # Assuming correct service name is GetTrgtPosResponse
            response.target_x = self.latest_goal_msg.target_x
            response.target_y = self.latest_goal_msg.target_y
        else:
            rospy.logwarn("No target information available")
            return None

    def target_callback(self, goal_msg):
    
        """
        Callback function to display the last target value. 
        
        This function is activated when the goal has the value and it will display the last target position. 

        Paramters:
            goal_msg (Goal) : value inserted by the user.
            
        Returns:
            None
            
        """
        # receive goal_msg
        self.latest_goal_msg = goal_msg
        rospy.loginfo("Received Goal message: target_x={}, target_y={}".format(goal_msg.target_x, goal_msg.target_y))


if __name__ == "__main__":
    try:
        get_last_target = GetLastTarget()
    except rospy.ROSInterruptException:
        pass


