package org.example.app.repository;

import jakarta.persistence.Query;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import org.example.app.entity.Fruit;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FruitRepositoryImpl implements FruitRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(Fruit fruit) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.merge(fruit);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Fruit> fetchAll() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Fruit> cq = cb.createQuery(Fruit.class);
        Root<Fruit> root = cq.from(Fruit.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }

    @Override
    public Fruit fetchById(Long id) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Fruit.class, id);
    }

    @Override
    public void delete(Long id) {
        Session session = sessionFactory.getCurrentSession();
        Fruit fruit = session.byId(Fruit.class).load(id);
        session.remove(fruit);
    }
}
