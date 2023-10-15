package org.example.app.service;

import org.example.app.entity.User;

import java.util.List;

public interface UserService extends BaseService<User> {
    void save(User user);
    List<User> fetchAll();
    User fetchById(Long id);
    void delete(Long id);
}
