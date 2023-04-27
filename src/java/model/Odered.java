/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MSII
 */
public class Odered {
    int id, id_product, id_user, price, count, tong;
    String tinhTrang, link_img, name_prod;
    public Odered(){
        this.id=0;
        this.id_product=0;
        this.id_user=0;
        this.count=0;
        this.price=0;
        this.tinhTrang="đã đặt hàng";
        this.link_img=null;
        this.tong=price*count;
        this.name_prod="";
    }
    public Odered(int id_prod, int id_user,int price, int count, String link_img){
        this.id=id;
        this.id_product=id_prod;
        this.id_user=id_user;
        this.count=count;
        this.link_img=link_img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_product() {
        return id_product;
    }

    public void setId_product(int id_product) {
        this.id_product = id_product;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTong() {
        return price*count;
    }

    public void setTong() {
        this.tong = price*count;
    }

    public String getLink_img() {
        return link_img;
    }

    public void setLink_img(String link_img) {
        this.link_img = link_img;
    }

    public String getName_Prod() {
        return name_prod;
    }

    public void setName_prod(String name) {
        this.name_prod = name;
    }
    
}
