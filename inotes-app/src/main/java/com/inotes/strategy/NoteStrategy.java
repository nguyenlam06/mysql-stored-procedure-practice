package com.inotes.strategy;

import com.inotes.model.Note;
import java.util.List;

public interface NoteStrategy {
    void save(Note note);
    void delete(int id);
    List<Note> findAll();
    Note findById(int id);
    List<Note> search(String keyword);
    String getStorageName();
}
