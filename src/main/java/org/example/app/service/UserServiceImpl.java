package org.example.app.service;

import jakarta.transaction.Transactional;
import org.example.app.entity.User;
import org.example.app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

// @Service використовується для анотування
// класів реалізації сервісів.
// @Transactional застосовується до сервісного шару
// для підтримки транзакцій.
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository repository;

    @Override
    @Transactional
    public void save(User user) {
        repository.save(user);
    }

    @Override
    @Transactional
    public List<User> fetchAll() {
        return repository.fetchAll();
    }

    @Override
    @Transactional
    public User fetchById(Long id) {
        return repository.fetchById(id);
    }

    @Override
    @Transactional
    public void delete(Long id) {
        repository.delete(id);
    }
}
