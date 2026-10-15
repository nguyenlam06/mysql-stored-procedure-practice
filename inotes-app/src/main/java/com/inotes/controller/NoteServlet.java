package com.inotes.controller;

import com.inotes.model.Note;
import com.inotes.service.NoteManagement;
import com.inotes.strategy.NoteDBStrategy;
import com.inotes.strategy.NoteFileStrategy;
import com.inotes.strategy.NoteStrategy;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "NoteServlet", urlPatterns = "/notes")
public class NoteServlet extends HttpServlet {
    private NoteManagement noteManagement;
    private NoteDBStrategy dbStrategy;
    private NoteFileStrategy fileStrategy;

    @Override
    public void init() throws ServletException {
        dbStrategy = new NoteDBStrategy();
        String realPath = getServletContext().getRealPath("/");
        fileStrategy = new NoteFileStrategy(realPath);
        // M?c d?nh ch?n MySQL Strategy
        noteManagement = new NoteManagement(dbStrategy);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "view":
                viewNote(request, response);
                break;
            case "delete":
                deleteNote(request, response);
                break;
            case "switch-storage":
                switchStorage(request, response);
                break;
            default:
                listNotes(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                createNote(request, response);
                break;
            case "edit":
                updateNote(request, response);
                break;
            case "search":
                searchNotes(request, response);
                break;
            default:
                listNotes(request, response);
                break;
        }
    }

    private void switchStorage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String type = request.getParameter("type");
        if ("file".equalsIgnoreCase(type)) {
            noteManagement.setStrategy(fileStrategy);
        } else {
            noteManagement.setStrategy(dbStrategy);
        }
        response.sendRedirect("notes");
    }

    private void listNotes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Note> list = noteManagement.getAllNotes();
        request.setAttribute("listNotes", list);
        request.setAttribute("currentStorage", noteManagement.getStrategy().getStorageName());
        RequestDispatcher dispatcher = request.getRequestDispatcher("notes/list.jsp");
        dispatcher.forward(request, response);
    }

    private void searchNotes(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Note> list = noteManagement.searchNotes(keyword);
        request.setAttribute("listNotes", list);
        request.setAttribute("keyword", keyword);
        request.setAttribute("currentStorage", noteManagement.getStrategy().getStorageName());
        RequestDispatcher dispatcher = request.getRequestDispatcher("notes/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("notes/create.jsp");
        dispatcher.forward(request, response);
    }

    private void createNote(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int typeId = Integer.parseInt(request.getParameter("typeId"));

        noteManagement.addNote(title, content, typeId);
        response.sendRedirect("notes");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Note note = noteManagement.getNoteById(id);
        request.setAttribute("note", note);
        RequestDispatcher dispatcher = request.getRequestDispatcher("notes/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void updateNote(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int typeId = Integer.parseInt(request.getParameter("typeId"));

        noteManagement.updateNote(id, title, content, typeId);
        response.sendRedirect("notes");
    }

    private void viewNote(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Note note = noteManagement.getNoteById(id);
        request.setAttribute("note", note);
        RequestDispatcher dispatcher = request.getRequestDispatcher("notes/view.jsp");
        dispatcher.forward(request, response);
    }

    private void deleteNote(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        noteManagement.deleteNote(id);
        response.sendRedirect("notes");
    }
}
