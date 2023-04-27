/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MSII
 */
public class Cart {

    static int id, count, id_prod, id_user;

    public Cart() {
        id = 0;
        count = 0;
        id_prod = 0;
        id_user = 0;
    }

    public Cart(int id, int count, int id_product, int id_username) {
        this.id = id;
        this.count = count;
        this.id_prod = id_product;
        this.id_user = id_username;
    }

    public static int getId() {
        return id;
    }

    public static void setId(int id) {
        Cart.id = id;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        Cart.count = count;
    }

    public static int getId_prod() {
        return id_prod;
    }

    public static void setId_prod(int id_prod) {
        Cart.id_prod = id_prod;
    }

    public static int getId_user() {
        return id_user;
    }

    public static void setId_user(int id_user) {
        Cart.id_user = id_user;
    }

}
