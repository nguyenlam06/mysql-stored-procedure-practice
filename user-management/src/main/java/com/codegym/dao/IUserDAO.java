package com.codegym.dao;

import com.codegym.model.User;
import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws Exception;
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id) throws Exception;
    public boolean updateUser(User user) throws Exception;
    public List<User> searchByCountry(String country);
    public List<User> selectAllUsersSortedByName();
    public void addUserTransaction(User user, int[] permissionIds) throws SQLException;
    public void insertUpdateWithoutTransaction() throws SQLException;
    public void insertUpdateUseTransaction() throws SQLException;
    
    // Khai báo các phuong th?c g?i Stored Procedures
    public List<User> getUserByProcedure();
    public boolean updateUserProcedure(User user) throws SQLException;
    public boolean deleteUserProcedure(int id) throws SQLException;
}
