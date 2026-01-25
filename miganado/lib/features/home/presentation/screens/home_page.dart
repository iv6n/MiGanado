import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ...existing code...
import 'package:miganado/features/home/presentation/screens/page_inicio.dart';
import 'package:miganado/features/home/presentation/screens/page_animales.dart';
import 'package:miganado/features/home/presentation/screens/page_calendario.dart';
import 'package:miganado/features/home/presentation/screens/page_ubicaciones.dart';
import 'package:miganado/features/home/presentation/screens/page_perfil.dart';
import 'package:miganado/features/home/presentation/screens/registro_popup.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 2; // Inicio es el tab central (index 2)

  final List<Widget> _pages = const [
    PageAnimales(), // Index 0
    PageCalendario(), // Index 1
    PageInicio(), // Index 2 - Central (HOME)
    PageUbicaciones(), // Index 3
    PagePerfil(), // Index 4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
        color: Colors.white,
        elevation: 8,
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: _buildNavItem(0, Icons.pets, 'Animales')),
                Expanded(
                    child:
                        _buildNavItem(1, Icons.calendar_today, 'Calendario')),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40), // Altura equivalente al icono
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                              scale: animation, child: child);
                        },
                        child: Text(
                          _selectedIndex == 2 ? 'Registro' : 'Inicio',
                          key: ValueKey(_selectedIndex == 2),
                          style: TextStyle(
                            fontSize: _selectedIndex == 2 ? 11 : 10,
                            fontWeight: FontWeight.w600,
                            color: _selectedIndex == 2
                                ? Colors.green
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Espacio para el FAB
                Expanded(
                    child: _buildNavItem(3, Icons.location_on, 'Ubicaciones')),
                Expanded(child: _buildNavItem(4, Icons.person, 'Perfil')),
              ],
            ),
            Center(
              heightFactor: _selectedIndex == 2 ? 0.55 : 0.7,
              child: SizedBox(
                width: 65,
                child: FloatingActionButton(
                  onPressed: () {
                    if (_selectedIndex != 2) {
                      setState(() => _selectedIndex = 2);
                    } else {
                      // En home: abrir popup de registro
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistroPopup(),
                          fullscreenDialog: true,
                        ),
                      );
                    }
                  },
                  backgroundColor:
                      _selectedIndex == 2 ? Colors.green : Colors.grey,
                  elevation: _selectedIndex == 2 ? 8 : 6,
                  shape: const CircleBorder(),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(scale: animation, child: child);
                    },
                    child: Icon(
                      _selectedIndex == 2 ? Icons.add : Icons.home,
                      key: ValueKey(_selectedIndex == 2),
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () {
        setState(() => _selectedIndex = index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.green : Colors.grey,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: isSelected ? Colors.green : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
