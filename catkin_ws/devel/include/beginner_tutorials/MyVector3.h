#include <ros/message_traits.h>
#include <ros/serialization.h>

struct MyVector3
{
	double x;
	double y;
	double z;
};
// compile-time assert that sizeof(MyVector3) == serializationLength(x) + serializationLength(y) + serializationLength(z)
ROS_STATIC_ASSERT(sizeof(MyVector3) == 24);

namespace ros
{
	namespace message_traits
	{
		// This type is fixed-size (24-bytes)
		template<> struct IsFixedSize<MyVector3> : public TrueType {};
		// This type is memcpyable
		template<> struct IsSimple<MyVector3> : public TrueType {};

		template<>
		struct MD5Sum<MyVector3>
		{
			static const char* value()
			{
				// Ensure that if the definition of geometry_msgs/Vector3 changes we have a compile error here.
				ROS_STATIC_ASSERT(MD5Sum<geometry_msgs::Vector3>::static_value1 == 0x4a842b65f413084dULL);
				ROS_STATIC_ASSERT(MD5Sum<geometry_msgs::Vector3>::static_value2 == 0xc2b10fb484ea7f17ULL);
				return MD5Sum<geometry_msgs::Vector3>::value();
			}
			static const char* value(const MyVector3& m)
			{
				return MD5Sum<geometry_msgs::Vector3>::value(m);
				}
		};

		template<>
		struct DataType<MyVector3>
		{
			  static const char* value()
			  {
				  return DataType<geometry_msgs::Vector3>::value();
			  }
			  static const char* value(const MyVector3& m)
			  {
				  return DataType<geometry_msgs::Vector3>::value(m);
			  }
		};

		template<>
		struct Definition<MyVector3>
		{
			  static const char* value()
			    {
					    return Definition<geometry_msgs::Vector3>::value();
						  }

						    static const char* value(const MyVector3& m)
							  {
								      return Definition<geometry_msgs::Vector3>::value(m);
									    }
		};
	} // namespace message_traits

	namespace serialization
	{
		template<>
		struct Serializer<MyVector3>
		{
			template<typename Stream, typename T>
			inline static void allInOne(Stream& stream, T t)
			{
				stream.next(t.x);
				stream.next(t.y);
				stream.next(t.z);
			}
			ROS_DECLARE_ALLINONE_SERIALIZER;
		};
	} // namespace serialization
} // namespace ros
