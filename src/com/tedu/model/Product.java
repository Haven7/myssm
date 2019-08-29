package com.tedu.model;

import java.util.List;

public class Product {
	private int id;
	private String name;
	private double price;//商品单价
	private int inventory;//商品库存
	private int sales;//商品销量
	private String describe;//商品描述
	private double discount;//商品折扣
	private int status;//商品状态:0表示上架,1表示下架
	private Category category;
	private List<Img> imgs;
	
	public Product() {
		
	}

	public Product(String name, double price, int inventory, int sales, String describe, double discount, int status,
			Category category) {
		this.name = name;
		this.price = price;
		this.inventory = inventory;
		this.sales = sales;
		this.describe = describe;
		this.discount = discount;
		this.status = status;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Img> getImgs() {
		return imgs;
	}

	public void setImgs(List<Img> imgs) {
		this.imgs = imgs;
	}
	
	
}
