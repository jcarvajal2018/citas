import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/appointment_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentPage=0;
  final PageController _page=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            //update page index when tab pressed/switch page
            currentPage = value;
          });
        }),  
          children: const <Widget>[
            HomePage(),
            AppointmentPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (page) {
            setState((){
              currentPage=page;
              _page.animateToPage(
                page,
                duration: const Duration(milliseconds:500),
                curve: Curves.easeInOut,
              );
            });
          },
          backgroundColor: Color.fromARGB(255, 123, 177, 125), // Aquí estableces el color de fondo a verde
          selectedItemColor: Colors.white, // Color de los íconos/etiquetas activos
          unselectedItemColor: Colors.white.withOpacity(0.60), // Color de los íconos/etiquetas inactivos, más transparente          
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
              label: 'Home',
            ),  
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
              label: 'Appointments',
            ),
          ],
        ),
      );
  }
}


// la view page esta terminada
// y hay 2 paginas main
