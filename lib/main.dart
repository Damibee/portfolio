import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Stack(
            //fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/cover.jpeg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.40,
              ),
              Positioned(
                  top: 40,
                  left: 120,
                  child: Text(
                    'Portfolio',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.normal),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 160,
                ),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipOval(
                        child: Image.asset(
                      'assets/images/profile.jpeg',
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 15,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Bolanle R. Damilola',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Pharmacist , Mobile Developer',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue),
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel nunc sed dolor interdum sagittis.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('21, Oba Olagbegi Old Bodija, Ibadan. Nigeria'),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.photo_album,
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            '254',
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            'Projects',
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.group,
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            '564',
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            'Clients',
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            '412',
                          ),
                          Container(
                            height: 5,
                          ),
                          Text(
                            'Likes',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}