package ru.javamentor.preproject.service;

import ru.javamentor.preproject.model.User;

import java.util.List;

public interface UserService {
    void add(User user);
    void update(User user);
    void delete(User user);
    List<User> getUsers();
    User getUserById(int id);
}
