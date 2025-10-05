import 'package:flutter/material.dart';
import 'package:notas_app/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_card.dart';
import '../screens/note_editor.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // 👇 Esta clave permite acceder al Scaffold directamente
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final noteProvider = context.watch<NoteProvider>();

    return Scaffold(
      key: _scaffoldKey, // 👈 Asignamos la clave aquí
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        title: Text(
          "Bloc de notas",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // 👇 Ahora abrimos el Drawer desde la clave
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Función de búsqueda próximamente 🔍'),
                ),
              );
            },
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'ORDENAR',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: noteProvider.notes.isEmpty
          ? const Center(child: Text("Aquí van las notas ✍️"))
          : ListView.builder(
              itemCount: noteProvider.notes.length,
              itemBuilder: (context, index) {
                final note = noteProvider.notes[index];
                return NoteCard(
                  note: note,
                  onDelete: () => noteProvider.deleteNote(index),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const NoteEditorScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
