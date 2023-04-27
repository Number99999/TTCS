/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MSII
 */
public class User {

    private String username, add, phone, pass, email, sex;
    int id_user, admin;

    public User() {
        id_user = 0;
        username = "";
        add = "";
        phone = "";
        pass = "";
        email = "";
        sex = "";
        admin = 0;
    }

    ;
    public User(String name, String add, String phone, String email, String pass, String sex) {
        this.username = name;
        this.add = add;
        this.phone = phone;
        this.email = email;
        this.pass = pass;
        this.sex = sex;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSex() {
        return sex;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

}
