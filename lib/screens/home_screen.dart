import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_card.dart';
import '../screens/note_editor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final noteProvider = context.watch<NoteProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Bloc de Notas")),
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
