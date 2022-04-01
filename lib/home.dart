import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musicplayer/apii.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}
late dynamic result;
TextEditingController _textControl = TextEditingController();
StreamController _controller = StreamController();



class _ScreenHomeState extends State<ScreenHome> {
  loadPost({required number}){


   btnWork(item: number) .then((value){
    _controller.add(value);
    return value;
    });
  }
  Icon CustomIcon = Icon(Icons.search);
  Widget CustomTitle = Text( "numberAPI");
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomTitle,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (CustomIcon.icon == Icons.search) {
                    if (CustomIcon.icon == Icons.search) {
                      CustomIcon = const Icon(Icons.cancel);
                      CustomTitle =  ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 28,
                        ),
                        title: TextField(
                         onSubmitted: (value){
                           setState(() {
                             loadPost(number: value);
                           });
                         },
                          decoration: InputDecoration(
                            hintText: 'enter a number...',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    }
                  } else {
                    CustomIcon = Icon(Icons.search);
                    CustomTitle = Text("location name");
                  }
                });
              },
              icon: CustomIcon)
        ],
      ),
     body: StreamBuilder(
         stream: _controller.stream,
         builder: (ctx,AsyncSnapshot snapshot){
       if(snapshot.hasData){
         return Center(
        child: Text(result.number.toString()),
         );
       }
       if(snapshot.connectionState != ConnectionState.done){
         return CircularProgressIndicator();
       }
       return Container();
     }),
    );
  }
  btnWork({required dynamic item})async{
 result = await  apiGet(numberr: item);
 return result;
  }
}
