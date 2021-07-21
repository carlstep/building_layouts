import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSectionStack = Stack(
      clipBehavior: Clip.none,
      //padding: const EdgeInsets.all(32),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/fuxian-lake-pink-beach.jpg',
                    width: 360,
                    height: 240,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 10,
          child: Card(
            color: Colors.lightGreen.shade300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    //padding: const EdgeInsets.only(bottom: 8),
                    children: [
                      Text(
                        'The Lakeside Campsite',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Fuxian, Yunnan, China',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 30,
          bottom: 20,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            color: Colors.yellow[300],
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.red[500],
                  ),
                  Text(
                    '41',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        'Fuxian Lake (Chinese: 抚仙湖; pinyin: Fǔxiān Hú) '
        'stretches out through Chengjiang, Jiangchuan and Huaning Counties '
        'in Yunnan Province, spanning an area of 212 square kilometers. The '
        'lake is ranked third-largest in Yunnan, after Dian Lake and Erhai Lake. '
        'Also the deepest lake in Yunnan, it is 155 meters deep at its greatest '
        'depth. It is also the third-deepest fresh water lake in China, after '
        'Tianchi and Kanas Lake.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('building_layouts'),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            titleSectionStack,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
