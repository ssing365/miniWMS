package com.wms.demo.model;

import lombok.Data;

@Data
public class Item {
    private Long id;
    private String name;
    private int quantity;
    private String location;
}