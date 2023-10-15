package org.example.app.repository;

import org.example.app.entity.User;

import java.util.List;

public interface UserRepository extends BaseRepository<User> {
    void save(User user);
    List<User> fetchAll();
    User fetchById(Long id);
    void delete(Long id);
}
