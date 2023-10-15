package org.example.app.service;

import jakarta.transaction.Transactional;
import org.example.app.entity.Fruit;
import org.example.app.repository.FruitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

// @Service використовується для анотування
// класів реалізації сервісів.
// @Transactional застосовується до сервісного шару
// для підтримки транзакцій.
@Service
public class FruitServiceImpl implements FruitService {

    @Autowired
    FruitRepository repository;

    @Override
    @Transactional
    public void save(Fruit fruit) {
        repository.save(fruit);
    }

    @Override
    @Transactional
    public List<Fruit> fetchAll() {
        return repository.fetchAll();
    }

    @Override
    @Transactional
    public Fruit fetchById(Long id) {
        return repository.fetchById(id);
    }

    @Override
    @Transactional
    public void delete(Long id) {
        repository.delete(id);
    }
}
