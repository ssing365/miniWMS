package com.wms.demo.controller;

import com.wms.demo.model.Item;
import com.wms.demo.service.ItemService;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/items")
public class ItemController {

    private final ItemService itemService;

    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping
    public String list(Model model) {
    	List<Item> items = itemService.findAll();
        model.addAttribute("items", items);
        return "item/list";
    }

    @GetMapping("/new")
    public String createForm(Model model) {
        model.addAttribute("item", new Item());
        return "item/form";
    }

    @PostMapping
    public String save(Item item) {
        itemService.save(item);
        return "redirect:/items";
    }

    @GetMapping("/{id}/edit")
    public String editForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("item", itemService.findById(id));
        return "item/form";
    }

    @PostMapping("/{id}/delete")
    public String deleteItem(@PathVariable("id") Long id) {
        try {
            itemService.delete(id);
            return "redirect:/items?deleted=true";
        } catch (Exception e) {
            return "redirect:/items?deleted=false";
        }
    }

}
