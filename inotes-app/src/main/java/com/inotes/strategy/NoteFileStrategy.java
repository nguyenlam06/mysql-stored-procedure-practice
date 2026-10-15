package com.inotes.strategy;

import com.inotes.model.Note;
import java.io.*;
import java.util.*;

public class NoteFileStrategy implements NoteStrategy {
    private File file;

    public NoteFileStrategy(String realPath) {
        File dataDir = new File(realPath, "data");
        if (!dataDir.exists()) dataDir.mkdirs();
        this.file = new File(dataDir, "notes.txt");
        if (!file.exists()) {
            try { file.createNewFile(); } catch (IOException e) { e.printStackTrace(); }
        }
    }

    @Override
    public String getStorageName() { return "Flat File Text (notes.txt)"; }

    private String getTypeName(int typeId) {
        switch(typeId) {
            case 1: return "Cá nhân";
            case 2: return "Công vi?c";
            case 3: return "H?c t?p";
            default: return "Khác";
        }
    }

    @Override
    public synchronized List<Note> findAll() {
        List<Note> list = new ArrayList<>();
        if (!file.exists()) return list;

        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.trim().isEmpty()) continue;
                String[] parts = line.split("\\|", -1);
                if (parts.length >= 4) {
                    int id = Integer.parseInt(parts[0]);
                    String title = parts[1];
                    String content = parts[2];
                    int typeId = Integer.parseInt(parts[3]);
                    list.add(new Note(id, title, content, typeId, getTypeName(typeId)));
                }
            }
        } catch (Exception e) { e.printStackTrace(); }
        return list;
    }

    @Override
    public synchronized void save(Note note) {
        List<Note> notes = findAll();
        if (note.getId() > 0) {
            for (int i = 0; i < notes.size(); i++) {
                if (notes.get(i).getId() == note.getId()) {
                    notes.set(i, note);
                    break;
                }
            }
        } else {
            int maxId = 0;
            for (Note n : notes) {
                if (n.getId() > maxId) maxId = n.getId();
            }
            note.setId(maxId + 1);
            notes.add(note);
        }
        writeAll(notes);
    }

    @Override
    public synchronized void delete(int id) {
        List<Note> notes = findAll();
        notes.removeIf(n -> n.getId() == id);
        writeAll(notes);
    }

    @Override
    public Note findById(int id) {
        for (Note n : findAll()) {
            if (n.getId() == id) return n;
        }
        return null;
    }

    @Override
    public List<Note> search(String keyword) {
        List<Note> result = new ArrayList<>();
        String kw = keyword.toLowerCase();
        for (Note n : findAll()) {
            if (n.getTitle().toLowerCase().contains(kw) || n.getContent().toLowerCase().contains(kw)) {
                result.add(n);
            }
        }
        return result;
    }

    private void writeAll(List<Note> notes) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(file, false))) {
            for (Note n : notes) {
                writer.write(n.getId() + "|" + n.getTitle() + "|" + n.getContent() + "|" + n.getTypeId());
                writer.newLine();
            }
        } catch (IOException e) { e.printStackTrace(); }
    }
}
