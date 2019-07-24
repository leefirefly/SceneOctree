#include "ros/ros.h"
#include "std_msgs/String.h"
#include <topic_tools/shape_shifter.h>
#include "ros_type_introspection/ros_introspection.hpp"

using namespace RosIntrospection;

void chatterCallback(const topic_tools::ShapeShifter::ConstPtr& msg,
                   const std::string &topic_name,
                   RosIntrospection::Parser& parser)
{

    const std::string&  datatype   =  msg->getDataType();
    const std::string&  definition =  msg->getMessageDefinition();
    printf("datatype--------- %s ----------\n", datatype.c_str() );
    printf("definition--------- %s ----------\n", definition.c_str() );

    // don't worry if you do this more than once: already registered message are not overwritten.
    parser.registerMessageDefinition( topic_name,
                                      RosIntrospection::ROSType(datatype),
                                      definition );

    // reuse these opbects to improve efficiency ("static" makes them persistent)
    std::vector<uint8_t> buffer;
    FlatMessage   flat_container;
    RenamedValues renamed_value;

    // copy raw memory into the buffer
    buffer.resize( msg->size() );
    ros::serialization::OStream stream(buffer.data(), buffer.size());
    msg->write(stream);

    // deserialize and rename the vectors
    parser.deserializeIntoFlatContainer( topic_name, absl::Span<uint8_t>(buffer), &flat_container, 100);
    parser.applyNameTransform( topic_name, flat_container, &renamed_value );

    // Print the content of the message
    printf("--------- %s ----------\n", topic_name.c_str() );
    for (auto it: renamed_value)
    {
        const std::string& key = it.first;
        const Variant& value   = it.second;
        printf(" %s = %f\n", key.c_str(), value.convert<double>() );
    }
    for (auto it: flat_container.name)
    {
        const std::string& key    = it.first.toStdString();
        const std::string& value  = it.second;
        printf(" %s = %s\n", key.c_str(), value.c_str() );
    }
}


// usage: pass the name of the file as command line argument
int main(int argc, char** argv)
{
    Parser parser;
    ros::init(argc, argv, "listener");
    ros::NodeHandle nh;
    const std::string topic_name = "chatter";
    //who is afraid of lambdas and boost::functions ?
    
    boost::function<void(const topic_tools::ShapeShifter::ConstPtr&) > callback;
    callback = [&parser, topic_name](const topic_tools::ShapeShifter::ConstPtr& msg) -> void
    {
        chatterCallback(msg, topic_name, parser) ;
    };
    ros::Subscriber subscriber = nh.subscribe(topic_name, 1000, callback);

    ros::spin();
    return 0;
}
