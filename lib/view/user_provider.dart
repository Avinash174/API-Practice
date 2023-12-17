import 'package:api_practice/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserWithProvider extends StatefulWidget {
  const UserWithProvider({super.key});

  @override
  State<UserWithProvider> createState() => _UserWithProviderState();
}

class _UserWithProviderState extends State<UserWithProvider> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<UserProvider>(context, listen: false).getAllUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Data',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<UserProvider>(builder: (context, provider, child) {
        return provider.loading
            ? SizedBox(
                height: 100,
                child: Center(
                  child: SpinKitFadingCircle(),
                ),
              )
            : ListView.builder(
                itemCount: userProvider.userModel.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text(userProvider.userModel.length.toString()),
                  );
                }),
              );
      }
          // child: userProvider.loading
          //     ? Center(
          //         child: SpinKitFadingCircle(),
          //       )
          //     : ListView.builder(
          //         itemCount: userProvider.userModel.length,
          //         itemBuilder: ((context, index) {
          //           return ListTile(
          //             title: Text(userProvider.userModel.toString()),
          //           );
          //         }),
          //       ),
          ),
    );
  }
}
