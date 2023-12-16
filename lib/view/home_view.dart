import 'package:api_practice/model/post_model.dart';
import 'package:api_practice/view_model/post_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    List<PostModel> postModel = [];
    PostViewModel postViewModel = PostViewModel();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Product',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 200,
              child: FutureBuilder<PostModel>(
                  future: postViewModel.fetchPostApi(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const SpinKitFadingCircle(
                        color: Colors.amberAccent,
                        size: 40,
                      );
                    } else {
                      return ListView.builder(
                        itemCount: postModel.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text(
                                'data',
                                style: GoogleFonts.poppins(
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          );
                        }),
                      );
                    }
                  }),
            ),
          ],
        ));
  }
}
