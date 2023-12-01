import 'package:flutter/material.dart';
import 'package:prototipo_x/components/ItemHome/ItemHome.dart';
import 'package:prototipo_x/components/events/categories_events_component.dart';
import 'package:prototipo_x/components/favorites/favorites_components.dart';
import 'package:prototipo_x/components/headers/header_home.dart';
import 'package:prototipo_x/repository/login_credentials.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

_sucess(){
  
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.sizeOf(context).width, 90),
        child: HeaderHome(),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favoritos',
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                padding: EdgeInsets.only(left: 40),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://res.cloudinary.com/dnnhfgiu5/image/upload/v1701352681/w3duumysoyhx2ff5kt7t.jpg")),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left:30)),
                Text("Maria Helena", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/person.png"))
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text("Perfil", style: TextStyle(
                      color: Color(0xff323232),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            InkWell(
              child: Container(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/settings.png"))
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text("Configurações", style: TextStyle(
                      color: Color(0xff323232),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
            ),
            
            Padding(padding: EdgeInsets.only(bottom: 20)),
            InkWell(
              child: Container(
                
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  
                  children: [
                    Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/bell.png"))
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text("Notificações", style: TextStyle(
                      color: Color(0xff323232),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),)
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
      body: ListView(
      children: const [
        Padding(padding: EdgeInsets.all(20)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ItemHome(path: "", title: "Grupos"),
          ItemHome(path: "/forumPath", title: "Fórum"),
          ItemHome(path: "/events", title: "Eventos")
        ]),
        Padding(
          padding: EdgeInsets.all(20),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50, bottom: 30),
          child: Text(
            "Eventos Próximos",
            style: TextStyle(
                color: Color(0xff363636),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        CategoryItemComponent(),
      ],
    )

    );
  }
}
