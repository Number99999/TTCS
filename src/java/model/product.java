package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import model.*;

public class Product {

    String name_prod, link_img, content, categories, tuKhoa;
    int soLuong, id_prod;
    int price, id_seller;

    public Product() {
        id_prod = 0;
        name_prod = "";
        link_img = "";
        content = "";
        id_seller = 0;
        categories = "";
        tuKhoa = "";
        soLuong = 0;
        price = 0;
    }

    public Product(int id, String name, String link, String content, int id_seller, String categories, String tuKhoa, int soLuong, int gia) {
        this.id_prod = id;
        this.name_prod = name;
        this.link_img = link;
        this.content = content;
        this.id_seller = id_seller;
        this.categories = categories;
        this.tuKhoa = tuKhoa;
        this.soLuong = soLuong;
        this.price = gia;
    }

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public String getName_prod() {
        return name_prod;
    }

    public void setName_prod(String name_prod) {
        this.name_prod = name_prod;
    }

    public String getLink_img() {
        return link_img;
    }

    public void setLink_img(String link_img) {
        this.link_img = link_img;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getId_seller() {
        return id_seller;
    }

    public void setId_seller(int id_seller) {
        this.id_seller = id_seller;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public String getTuKhoa() {
        return tuKhoa;
    }

    public void setTuKhoa(String tuKhoa) {
        this.tuKhoa = tuKhoa;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

}
