/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.*;
import java.sql.*;

import model.Cart;
import model.product;

/**
 *
 * @author MSII
 */
public class cart extends Base {

    public static void addToCart(Cart c) {
        String sql = "insert into Cart(id_product, count) values(?, ?);";
        try (
                 Connection conn = getConnection();  PreparedStatement preparedStatement = conn.prepareStatement(sql);) {
            preparedStatement.setString(1, Cart.getId());
            preparedStatement.setString(2, Cart.getCount());
        } catch (Exception e) {
        }
    }

    public static boolean checkCart(int iP) {
        String sql = "select * from cart where id_product =?;";
        try (
                 Connection connection = getConnection();  PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
            preparedStatement.setInt(1, iP);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static int getCountCart(int iP) {
        String sql = "SELECT * FROM cart WHERE id_product=?;";
        try (
                 Connection connection = getConnection();  PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
            preparedStatement.setInt(1, iP);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt("count");
            }
        } catch (Exception e) {
            //TODO: handle exception
        }
        return 1;
    }

    public static HashMap<product, Integer> getProductCart(String user) {
        HashMap<product, Integer> map = new HashMap<>();
        String sql = "SELECT * FROM cart, product WHERE cart.id_product = product.id_product and cart.user = ?;";
        try (
                 Connection connection = getConnection();  PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
            preparedStatement.setString(1, user);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idProduct = resultSet.getInt("id_product");
                String img = resultSet.getString("img");
                String name = resultSet.getString("name");
                String content = resultSet.getString("content");
                String categories = resultSet.getString("categories");
                String tuKhoa = resultSet.getString("tukhoa");
                String chiTiet = resultSet.getString("chitiet");
                int price = resultSet.getInt("price");
                int count = resultSet.getInt("count");
                product product = new product(idProduct, img, name, content, categories, chiTiet, tuKhoa, price);
                map.put(product, count);
            }
        } catch (Exception e) {
            //TODO: handle exception
        }
        return map;
    }

    public static void deleteProductCart(String user, int idProduct) {
        String sql = "DELETE FROM cart WHERE id_product=" + idProduct + ";";
        try (
                 Connection connection = getConnection();  PreparedStatement preparedStatement = connection.prepareStatement(sql);) {
            preparedStatement.execute();
        } catch (Exception e) {
            //TODO: handle exception
        }
    }
}
