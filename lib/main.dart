import 'package:flutter/material.dart';
import './widgets/home.dart';
import './widgets/card.dart';
import './widgets/Modena.dart';
import './widgets/messages.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      
      home: Aplica(),
    );
  }
}

class Aplica extends StatefulWidget {
  const Aplica({super.key});

  @override
  State<Aplica> createState() => _AplicaState();
}

class _AplicaState extends State<Aplica> {
  int _selectedIndex = 0; 


  static final List<Widget> _widgetOptions = <Widget>[
 
    const Center(
      child: MiWidget(),

    ),

  
    const Center(
      child: Micard(),
    ),

    
    const Center(
      child: Moneda(),
    ),

    
    const Center(
      child: ChatScreen(),
    ),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 247, 244, 227),

      //BARRA SUPERIOR

      appBar: AppBar(

           // Parte 1
          leading: IconButton( 
            onPressed: (){}, 
            icon: Icon(Icons.abc_outlined)),
            backgroundColor: Colors.yellow,

          //Parte 2
            title: const Text("Title"), 

            centerTitle: true,

          // Parte 3
            actions: [ 
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_a_photo_sharp)
            ),
            ],

      ),
      
      body: _widgetOptions[_selectedIndex],

       // MENÚ INFERIOR   
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            backgroundColor: const Color.fromARGB(255, 132, 85, 4),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_sharp),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Random',
          ),
          BottomNavigationBarItem(
            icon: Badge(label: Text('2'), child: Icon(Icons.messenger_sharp)),
            label: 'Messages',
          ),

        ],
        currentIndex: _selectedIndex,
        
        selectedItemColor: Colors.yellow,
        onTap: _onItemTapped,
      ),
    );
  }
}