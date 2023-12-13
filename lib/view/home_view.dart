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
  Widget build(BuildContext context) {
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
            height: 500,
            child: FutureBuilder(
              future: PostViewModel().fetchPostApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: SpinKitFadingCircle(
                      size: 40,
                      color: Colors.amber,
                    ),
                  );
                } else {
                  return ListView.builder(itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(
                        snapshot.data!.id.toString(),
                      ),
                    );
                  });
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
