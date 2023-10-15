package org.example.app.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.example.app.entity.Fruit;
import org.example.app.service.FruitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class FruitController {

    @Autowired
    private FruitService service;

    @RequestMapping("/fruits")
    public String viewFruits(Model model) {
        List<Fruit> fruits = service.fetchAll();
        model.addAttribute("title", "Fruits");
        model.addAttribute("fruit", fruits);
        return "fruits";
    }

    @RequestMapping("/add-fruit")
    public String addFruit(Model model) {
        model.addAttribute("title", "Add Fruit");
        return "fruit_add";
    }

    @RequestMapping(value = "/handle-fruit", method = RequestMethod.POST)
    public RedirectView handleFruit(@ModelAttribute Fruit fruit, HttpServletRequest request) {
        service.save(fruit);
        RedirectView redirectView = new RedirectView();
//        redirectView.setUrl(request.getContextPath() + "/fruits");
        redirectView.setUrl("./fruits");
        return redirectView;
    }

    @RequestMapping("/update-fruit/{id}")
    public String updateFruit(@PathVariable("id") Long id, Model model) {
        model.addAttribute("title","Update Fruit");
        Fruit fruit = service.fetchById(id);
        model.addAttribute("fruit", fruit);
        return "fruit_update";
    }

    @RequestMapping("/delete-fruit/{id}")
    public RedirectView deleteFruit(@PathVariable("id") Long id, HttpServletRequest request) {
        service.delete(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/fruits");
        return redirectView;
    }

}
