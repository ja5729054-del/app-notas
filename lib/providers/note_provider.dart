import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  List<String> _notes = [];

  List<String> get notes => _notes;

  void loadNotes() {
    _notes = []; // Aquí puedes cargar desde BD más adelante
    notifyListeners();
  }

  void addNote(String note) {
    _notes.add(note);
    notifyListeners();
  }

  void deleteNote(int index) {
    _notes.removeAt(index);
    notifyListeners();
  }
}
