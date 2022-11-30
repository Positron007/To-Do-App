import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo.dart';
import '../widgets/todo-list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final todoList = ToDo.todosList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),

      body: Container(

        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      bottom: 20
                    ),
                    child: const Text(
                      'All To-Dos',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  for(ToDo todo in todoList )
                    ToDoItem(todo: todo,),
                ],
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

 Widget searchBox() {
   return Container(
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
   );
 }



}
