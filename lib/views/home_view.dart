import 'package:flutter/material.dart';
import 'package:notly/views/search_view.dart';
import 'package:notly/components/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen[200],
        child: const Icon(Icons.search,color: Colors.white,size: 30,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SearchView();
          }));
        }),
      body:  const HomeViewBody(),
      );
  }
}
