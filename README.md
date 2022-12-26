# Squeeze Custom Messages
Repo Containing all custom messages used for squeeze

## Instructions for Adding New Messages

 - Add New Messages files to [msg](msg) folder
 - Add the message names to the CMakeLists.txt file after line 26
 - Build the package using the following command
```
colcon build --packages-select squeeze_custom_msgs
```

## Verify if messages are built

Run the following command to verify if the messages are built
```
ros2 interface list | grep squeeze_custom_msgs
```
To see the message details run the following command
```
ros2 interface show squeeze_custom_msgs/msg/<message_name>
```

## Using the messages in other packages

Add the follwing line to package.xml file of the package that will use the message

```
<exec_depend>squeeze_custom_msgs</exec_depend>
```

Build the package and use the message using the following command

```
from squeeze_custom_msgs.msg import <message_name>
```

## List of Messages 
 1. [ExternalWrenchEstimate](msg/ExternalWrenchEstimate.msg) - This message is used to publish the external wrench estimate
 2. [ImuData](msg/ImuData.msg) - This message is used to publish the arm bending angles
 3. [StateMachine](msg/StateMachine.msg) - This message is used to publish the state machine of the trajectory generator
