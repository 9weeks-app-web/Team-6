import 'package:flutter_app/model/recruitment_post.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteDataSource {
  Future<List<RecruitmentPostModel>> getRecruitmentPosts() async {
    try {
      var response = await Supabase.instance.client
          .from('recruitment_post')
          .select()
          .then((result) => result as List<dynamic>, onError: (error) {
        print(error);
        throw error;
      });

      return response
          .map((item) => RecruitmentPostModel.fromMap(item))
          .toList();
    } catch (e) {
      print(e);
      throw Exception('Error fetching recruitment posts: $e');
    }
  }
}
