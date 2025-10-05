import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF5F5F5), // color suave de fondo
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF8D6E63), // marrón igual al AppBar
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Bloc de notas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // 🏠 Inicio
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context); // cierra el menú
            },
          ),

          // ⭐ Favoritas
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Favoritas'),
            onTap: () {},
          ),

          // 🗃️ Categorías
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Categorías'),
            onTap: () {},
          ),

          // 🗓️ Recientes
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text('Recientes'),
            onTap: () {},
          ),

          const Divider(),

          // 🎨 Cambiar tema
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Cambiar tema'),
            onTap: () {},
          ),

          // 💾 Copia de seguridad
          ListTile(
            leading: const Icon(Icons.backup),
            title: const Text('Copia de seguridad'),
            onTap: () {},
          ),

          // ℹ️ Acerca de
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Acerca de'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
