#include <ros/ros.h>
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl/io/pcd_io.h>

#include <octomap_msgs/conversions.h>
#include <octomap_msgs/Octomap.h>

#include <sstream>

using namespace std;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker1");
  ros::NodeHandle nh;
  //ros::Publisher pcl_pub = nh.advertise<sensor_msgs::PointCloud2>("pointcloudshow", 10);
  ros::Publisher pcl_pub = nh.advertise<octomap_msgs::Octomap>("pointcloudshow", 10); 
  ros::Publisher pub_octomap = nh.advertise<octomap_msgs::Octomap>("octomap_full", 1, true);

  pcl::PointCloud<pcl::PointXYZRGBA> cloud;
  //sensor_msgs::PointCloud2 pcl_output;
  pcl::io::loadPCDFile("/home/lee_firefly/octomap/octomap_tutor/data/sample.pcd", cloud);
  //pcl::toROSMsg(cloud, pcl_output); // 转换成ROS下的数据类型 最终通过topic发布
  cout << "point cloud loaded, point size = " << cloud.points.size() << endl;

  octomap::ColorOcTree tree(0.001);
  for (auto p : cloud.points)
  {
    // 将点云里的点插入到octomap中
    tree.updateNode(octomap::point3d(p.x, p.y, p.z), true);
  }
  // 设置颜色
  for (auto p : cloud.points)
  {
    //tree.integrateNodeScene( p.x, p.y, p.z, p.r, p.g, p.b );
    tree.integrateNodeColor(p.x, p.y, p.z, p.r, p.g, p.b);
  }
  // 更新octomap
  tree.updateInnerOccupancy();
  // 存储octomap, 注意要存成.ot文件而非.bt文件
  cout << "tree created done." << endl;

  ros::Rate loop_rate(1);
  int count = 1;
  while (ros::ok())
  {
    octomap_msgs::Octomap pcl_output;
    pcl_output.header.stamp = ros::Time::now();
    pcl_output.header.frame_id = "camera_rgb_frame";
    if (octomap_msgs::fullMapToMsg(tree, pcl_output))
    {
      cout << "fullMapToMsg success!" << endl;
      pcl_pub.publish(pcl_output);
    }

    stringstream ss;
    ss << "/home/lee_firefly/catkin_ws/data/color_planePos" << count << ".ot";
    string filename = ss.str();
    octomap::AbstractOcTree *tree1 = octomap::AbstractOcTree::read(filename);
    if (octomap::ColorOcTree *tree2 = dynamic_cast<octomap::ColorOcTree *>(tree1))
    {
      octomap_msgs::Octomap output;
      output.header.stamp = ros::Time::now();
      output.header.frame_id = "camera_rgb_frame";
      if (octomap_msgs::fullMapToMsg(*tree2, output))
      {
        cout << "fullMapToMsg success!" << endl;
        pub_octomap.publish(output);
        count = count + 1;
      }
    }
    ros::spinOnce();
    loop_rate.sleep();
    if (count > 99)
      break;
  }
  return 0;
}
