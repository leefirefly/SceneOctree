#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/builtin_uint32.h"
#include "geometry_msgs/Point.h"
#include <string>
#include <sstream>
using namespace std;
namespace ser = ros::serialization;
#include <octomap/octomap.h>
//#include <octomap_msgs/conversions.h>
#include <octomap/ColorOcTree.h>
#include <octomap/OcTree.h>

int main(int argc, char **argv)
{
    octomap::ColorOcTree tree( 0.05 );
	ros::init(argc, argv, "talker");
	ros::NodeHandle n;
        //ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter",1000);
	ros::Publisher chatter_pub = n.advertise<geometry_msgs::Point>("chatter",1000);
	ros::Rate loop_rate(1);
	int count = 0;
	while (ros::ok())
	{
		geometry_msgs::Point msg;	
		msg.x = count;
		msg.y = count+1;
		msg.z = count+2;
		//std_msgs::String msg;
		//std_msgs::UInt32 msg;
		//std::stringstream ss;
		//ss << "Hello world" << count;
		//msg.data = ss.str();
		//msg.data = count;
		//uint32_t serial_size1 = ros::serialization::serializationLength(msg);
		//boost::shared_array<uint8_t>buffer1(new uint8_t[serial_size1]);

		//ser::OStream stream1(buffer1.get(), serial_size1);
		//ser::serialize(stream1, msg);

		//uint32_t serial_size2 = ros::serialization::serializationLength(msg);
		//boost::shared_array<uint8_t> buffer2(new uint8_t[serial_size2]);

		// Fill buffer with a serialized UInt32
		//ser::IStream stream2(buffer2.get(), serial_size2);
		//ser::deserialize(stream2, msg);
		chatter_pub.publish(msg);
		
		ROS_INFO("%f,%f,%f", msg.x,msg.y,msg.z);
		//ROS_INFO("%d", msg.data);
		ros::spinOnce();

		loop_rate.sleep();
		++count;
	}
}
