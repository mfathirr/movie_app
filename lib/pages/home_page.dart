import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
                'https://m.media-amazon.com/images/M/MV5BNjgwZGY1MDMtNmRjNi00N2JkLTgxMTUtZDQ3NGVlYTg2OTMxXkEyXkFqcGdeQW1yb2Njbw@@._V1_.jpg'),
            const Text('Categories'),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Card - $index")),
                    ),
                  );
                },
              ),
            ),
            const Text("Most Popular"),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      color: Colors.pink,
                    ),
                  );
                },
              ),
            ),
            const Text("Recommended"),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
