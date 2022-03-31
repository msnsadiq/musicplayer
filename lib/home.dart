import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}
TextEditingController _textControl = TextEditingController();

class _ScreenHomeState extends State<ScreenHome> {
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
                      CustomTitle = const ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 28,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: 'type in journal name...',
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
    );
  }
}
