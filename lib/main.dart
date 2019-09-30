import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30.0)),
                    color: Colors.white),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ache ',
                      style: TextStyle(color: Colors.black87, fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Sua Inspiração',
                      style: TextStyle(color: Colors.black, fontSize: 40.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: "O que você está procurando?",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Promoções de Hoje',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard(
                              'https://images.unsplash.com/photo-1508350552147-213c11fcede6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                          promoCard(
                              'https://images.unsplash.com/photo-1508540728476-74a4e03542a6?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
                          promoCard(
                              'https://images.unsplash.com/photo-1526101529939-611194fd120f?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          promoCard(
                              'https://images.unsplash.com/photo-1513267142214-d5edba134a55?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjY1MDE0fQ&auto=format&fit=crop&w=500&q=60'),
                          promoCard(
                              'https://images.unsplash.com/photo-1527280916202-fa1f7c499a7c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          promoCard(
                              'https://images.unsplash.com/photo-1539800943285-e61128565cd2?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          promoCard(
                              'https://images.unsplash.com/photo-1538146811373-9a5561648d50?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          promoCard(
                              'https://images.unsplash.com/photo-1536729610693-ae9073a4836e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1462392246754-28dfa2df8e6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'))),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: [
                                  0.3,
                                  0.9
                                ],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.2),
                                ])),
                        child: Align(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Os Melhores Estilos',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.1),
            ])),
      ),
    ),
  );
}
