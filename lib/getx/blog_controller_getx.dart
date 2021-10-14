import 'package:get/get.dart';
import 'package:saman_project/contorller/blog_controller_api.dart';
import 'package:saman_project/models/blog.dart';

class BlogControllerGetx extends GetxController{

  RxList<Blog> blogs = <Blog>[].obs;

  BlogControllerApi blogControllerApi = BlogControllerApi();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    indexBlog();
  }


  Future<void> indexBlog() async{
    blogs.value = await blogControllerApi.indexBlog();
  }



}

