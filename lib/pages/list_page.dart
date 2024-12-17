import 'package:day10/services/database.dart';
import 'package:day10/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
      ),
      body: FutureBuilder(
        future: Database().getData(),
        builder: (context, Snapshot){
          if (Snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
              itemCount: Snapshot.data!.length,
              itemBuilder: (context, index) {
                var item = snapshot.data![index];
                return CardWidget(
                  age: item.age,
                  id: item.id,
                  name: item.name,
                  salary item.salary,
                );
              },
            );
          }else if(Snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }else{
            return const Center(child: Text("Error"),);
          }
        },
    );
  }
}