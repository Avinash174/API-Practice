import 'package:api_practice/view_model/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ProductViewModel productViewModel = ProductViewModel();

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
              future: productViewModel.fetchProductAPi(),
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
                    return ListTile();
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
