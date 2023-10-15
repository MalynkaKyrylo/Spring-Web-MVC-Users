package org.example.app.service;

import org.example.app.entity.Fruit;
import org.example.app.service.BaseService;

import java.util.List;

public interface FruitService extends BaseService<Fruit> {
    void save(Fruit fruit);
    List<Fruit> fetchAll();
    Fruit fetchById(Long id);
    void delete(Long id);
}
