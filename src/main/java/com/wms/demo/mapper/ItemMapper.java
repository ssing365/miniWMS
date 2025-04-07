package com.wms.demo.mapper;

import com.wms.demo.model.Item;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ItemMapper {
    @Select("SELECT * FROM items")
    List<Item> findAll();

    @Select("SELECT * FROM items WHERE id = #{id}")
    Item findById(Long id);

    @Insert("INSERT INTO items(name, quantity, location) VALUES(#{name}, #{quantity}, #{location})")
    @Options(useGeneratedKeys = true, keyProperty = "id")
    void insert(Item item);

    @Update("UPDATE items SET name=#{name}, quantity=#{quantity}, location=#{location} WHERE id=#{id}")
    void update(Item item);

    @Delete("DELETE FROM items WHERE id = #{id}")
    void delete(Long id);
}
