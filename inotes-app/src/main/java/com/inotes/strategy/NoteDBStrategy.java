package com.inotes.strategy;

import com.inotes.model.Note;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class NoteDBStrategy implements NoteStrategy {
    private String jdbcURL = "jdbc:mysql://localhost:3306/inotes_db?useSSL=false&allowPublicKeyRetrieval=true";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public String getStorageName() { return "MySQL Database"; }

    @Override
    public void save(Note note) {
        if (note.getId() > 0) {
            String sql = "UPDATE notes SET title=?, content=?, type_id=? WHERE id=?";
            try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, note.getTitle());
                ps.setString(2, note.getContent());
                ps.setInt(3, note.getTypeId());
                ps.setInt(4, note.getId());
                ps.executeUpdate();
            } catch (SQLException e) { e.printStackTrace(); }
        } else {
            String sql = "INSERT INTO notes (title, content, type_id) VALUES (?, ?, ?)";
            try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
                ps.setString(1, note.getTitle());
                ps.setString(2, note.getContent());
                ps.setInt(3, note.getTypeId());
                ps.executeUpdate();
            } catch (SQLException e) { e.printStackTrace(); }
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM notes WHERE id=?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) { e.printStackTrace(); }
    }

    @Override
    public List<Note> findAll() {
        List<Note> list = new ArrayList<>();
        String sql = "SELECT n.id, n.title, n.content, n.type_id, t.name as type_name FROM notes n LEFT JOIN note_type t ON n.type_id = t.id ORDER BY n.id DESC";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                list.add(new Note(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getInt("type_id"),
                    rs.getString("type_name")
                ));
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return list;
    }

    @Override
    public Note findById(int id) {
        String sql = "SELECT n.id, n.title, n.content, n.type_id, t.name as type_name FROM notes n LEFT JOIN note_type t ON n.type_id = t.id WHERE n.id=?";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Note(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getInt("type_id"),
                    rs.getString("type_name")
                );
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return null;
    }

    @Override
    public List<Note> search(String keyword) {
        List<Note> list = new ArrayList<>();
        String sql = "SELECT n.id, n.title, n.content, n.type_id, t.name as type_name FROM notes n LEFT JOIN note_type t ON n.type_id = t.id WHERE n.title LIKE ? OR n.content LIKE ? ORDER BY n.id DESC";
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            String kw = "%" + keyword + "%";
            ps.setString(1, kw);
            ps.setString(2, kw);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Note(
                    rs.getInt("id"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getInt("type_id"),
                    rs.getString("type_name")
                ));
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return list;
    }
}
