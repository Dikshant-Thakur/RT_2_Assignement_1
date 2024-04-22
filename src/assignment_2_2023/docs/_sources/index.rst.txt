
Research Track(1) - Assignement 2 documentation. 
===============================================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

Assignement_2_2023 documentation!
**************************************
This is the documentation of the assignment2_2023 package!

Overview
*********
This is an overview of this documentation. Essentially, this project is a university assignment that relies entirely on the Gazebo simulation environment. The task entails prompting the user to set a target for the robot, following which it will navigate to the specified location. The professor has already developed the action server, and our task is to develop three nodes.

The first node, named **action_client**, will implement an action client, allowing the user to set a target (x, y) or cancel it. From there, we need to update the status to determine whether the robot has reached its target position. Additionally, we need to update the robot's position and velocity using a custom message.

The second node, named **GetLastTarget**, when called, will return the coordinates of the last target sent by the user.

The third node, **GetDistanceSpeed**, subscribes to the robot's position and velocity (using the custom message) and implements a server to retrieve the distance of the robot from the target and the robot's average speed.

GetDistanceSpeed Node
===========================
.. automodule:: scripts.GetDistanceSpeed
  :members:
  :undoc-members:
  
GetLastTarget Node
===========================
.. automodule:: scripts.GetLastTarget
  :members:
  :undoc-members:
  
action_client Node
===========================
.. automodule:: scripts.action_client
  :members:
  :undoc-members:



