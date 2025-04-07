package com.wms.demo.service;

import com.wms.demo.mapper.ItemMapper;
import com.wms.demo.model.Item;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    private final ItemMapper itemMapper;

    public ItemService(ItemMapper itemMapper) {
        this.itemMapper = itemMapper;
    }

    public List<Item> findAll() {
        return itemMapper.findAll();
    }

    public Item findById(Long id) {
        return itemMapper.findById(id);
    }

    public void save(Item item) {
        if (item.getId() == null) {
            itemMapper.insert(item);
        } else {
            itemMapper.update(item);
        }
    }

    public void delete(Long id) {
        itemMapper.delete(id);
    }
}
