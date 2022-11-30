import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),

      body: Container(

        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: const TextField(
                decoration: InputDecoration(

                  hintStyle: TextStyle(color: tdGrey),
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Align(
                      widthFactor: 1,
                      heightFactor: 1,
                      child: Icon(Icons.search, color: Colors.black, size: 20),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: 20,
                    maxWidth: 25
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            )
          ],

    ),
      ),
    );
  }

 AppBar _buildAppBar() {
   return AppBar(
     backgroundColor: tdBGColor,
     elevation: 0,
     title: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         const Icon(Icons.menu, color: tdBlack, size: 30),
         Container(
           height: 40,
           width: 40,
           child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: Image.asset('assets/images/logo-img.png')
           ),
         ),
         // const Text(
         //   'To Do List',
         //   style: TextStyle(color: tdBlack),
         // ),
       ],
     ),
   );
 }



}
