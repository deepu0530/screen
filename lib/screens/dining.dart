import 'package:flutter/material.dart';



class Dining extends StatefulWidget {
  const Dining({Key? key}) : super(key: key);

  @override
  _DiningState createState() => _DiningState();
}

class _DiningState extends State<Dining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            
            SliverAppBar(
              expandedHeight: 80.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on),
                    Text('Sliver App Bar', textScaleFactor: 1),
                    Icon(Icons.location_on),
                  ],
                ),
              ),
            ),
          
      
            SliverStickyHeader(
        header: Container(
          height: 60.0,
          color: Colors.lightBlue,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
        'Header #0',
        style: const TextStyle(color: Colors.white),
          ),
        ),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, i) => ListTile(
              leading: CircleAvatar(
                child: Text('0'),
              ),
              title: Text('List tile #$i'),
            ),
        childCount: 40,
          ),
        ),
      ),
          ],
        ),
      ),
    );
  }
}





