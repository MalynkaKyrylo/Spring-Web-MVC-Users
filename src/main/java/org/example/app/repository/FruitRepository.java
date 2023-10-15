package org.example.app.repository;

import org.example.app.entity.Fruit;
import org.example.app.repository.BaseRepository;

import java.util.List;

public interface FruitRepository extends BaseRepository<Fruit> {
    void save(Fruit fruit);
    List<Fruit> fetchAll();
    Fruit fetchById(Long id);
    void delete(Long id);
}
