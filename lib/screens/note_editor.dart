import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';

class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Nueva nota')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Escribe tu nota aquí...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                final noteText = _controller.text.trim();
                if (noteText.isNotEmpty) {
                  context.read<NoteProvider>().addNote(noteText);
                  Navigator.pop(context); // Volver a la pantalla anterior
                }
              },
              icon: const Icon(Icons.save),
              label: const Text('Guardar nota'),
            ),
          ],
        ),
      ),
    );
  }
}
