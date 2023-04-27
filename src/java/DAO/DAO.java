/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.*;
import java.util.*;
import model.*;

/**
 *
 * @author MSII
 */
public class DAO {

    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public List<Product> getAllProduct() {//nhận tất cả sản phẩm
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by name_prod;";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getAllShoes() {    //nhận sản phẩm giày
        List<Product> list = new ArrayList<>();
        String query = "select * from product where categories like 'giày' order by name_prod;";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getNewestProduct() {//nhận 4 sản phẩm mới nhất
        List<Product> list = new ArrayList<>();
        String query = "select * from product  order by id_prod desc limit 0, 4;";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }

        return list;
    }

    public List<Product> getAllShirt() {//nhận sản phẩm áo
        List<Product> list = new ArrayList<>();
        String query = "select * from product where categories like 'áo' order by name_prod;";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllWallet() {//nhận sản phẩm ví
        List<Product> list = new ArrayList<>();
        String query = "select * from product where categories like 'ví' order by name_prod;";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public Product getProduct(int id){
        Product p = new Product();
        String query = "select * from product where id_prod ='"+id +"';";
        try {
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next())
            {
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return p;
    }
    
    public static boolean checkUser(String e, String p) {//kiểm tra để login
        String query = "select * from user where email like '" + e + "' and pass like '" + p + "';";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            return false;
        } catch (SQLException sql) {

        }
        return false;
    }

    public static int getTotal(int id) { // tính tổng các sản phẩm chưa thanh toán
        String query = "select sum(product.price * cart.count)\n"
                + "from product, cart\n"
                + "where product.id_prod=cart.id_product and cart.id_user='" + id +"';";
        try {
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            rs.next();
            int t = rs.getInt(1);
            return t;
        } catch (Exception e) {
        }
        return 0;
    }

    public static boolean existEmail(String e) {         //kiểm tra email đã tồn tại để đki 
        String query = "select email from user where email like '" + e + "';";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            return false;
        } catch (SQLException sql) {

        }
        return false;
    }

    public static boolean checkProductInCart(int id, int id_user) {
        String query
                = "select * from cart where id_product='" + id + "' and id_user='" + id_user + "';";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();
            while (rs.next()) {
                return true;
            }
            return false;
        } catch (SQLException sql) {

        }
        return false;
    }

    public static int addUser(User user) {// đăng kí tài khoản
        DBContext pool = DBContext.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query
                = "INSERT INTO User (username, address, phone, pass, email, sex) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getAdd());
            ps.setString(3, user.getPhone());
            ps.setString(4, user.getPass());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getSex());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
    
    public static int addOder(Product o,int id_user, int count) throws SQLException {      //thêm đơn hàng đã đặt 
        conn = DBContext.getInstance().getConnection();
        String query = "insert into Odered(id_product, id_user, soLuong, price, name_prod, link_img)"
                + "values (?, ?, ?, ?, ?, ?);";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, o.getId_prod());
            ps.setInt(2, id_user);
            ps.setInt(3, count);
            ps.setInt(4, o.getPrice());
            ps.setString(5, o.getName_prod());
            ps.setString(6, o.getLink_img());
            return ps.executeUpdate();
        } catch (Exception e) {
        }
        return ps.executeUpdate();
    }
    public static int updateSoLuong(int id_prod, int soLuong, int count)//cập nhập số lượng còn lại sau khi đặt hàng
    {
        conn = DBContext.getInstance().getConnection();
        soLuong = soLuong - count;
        String query = "UPDATE `ttcs`.`product` SET `soLuong` = '" +soLuong +"' WHERE (`id_prod` = '"+id_prod + "');";
        try {
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return 0;
    }
        
    public List<Cart> getProductCart(int id) {   //nhận danh sách các sản phẩm trong giỏ hàng người dùng
        List<Cart> list = new ArrayList<>();
        String query = "select * from cart where id_user='" + id + "';";
        try {
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cart c = new Cart();
                c.setId(rs.getInt(1));
                c.setId_prod(rs.getInt(2));
                c.setCount(rs.getInt(3));
                c.setId_user(rs.getInt(4));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
        }
        return list;
    }
    public List<Odered> getListOdereds(int id) throws SQLException{ //nhận danh sách đơn hàng của người dùng 
        List<Odered> list = new ArrayList<>();
        String query= "select * from odered where id_user='" +id +"';";
        try {
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next())
            {
                Odered o = new Odered();
                o.setId(rs.getInt(1));
                o.setId_product(rs.getInt(2));
                o.setId_user(rs.getInt(3));
                o.setCount(rs.getInt(4));
                o.setPrice(rs.getInt(5));
                o.setName_prod(rs.getString(6));
                o.setLink_img(rs.getString(7));
                o.setTinhTrang(rs.getString(8));
                list.add(o);
            }
            return list;
        } catch (Exception e) {   
        }
        return list;
    }
    public List<donHang> getListOderedsAdmin() throws SQLException{ //nhận danh sách đơn hàng của người dùng cho admin
        List<donHang> list = new ArrayList<>();
        String query= "select id_product, soLuong, price, user.username, phone, link_img from odered, user where odered.id_user=user.id_user order by username;";
        try {
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next())
            {
                donHang o = new donHang();
                o.setId_product(rs.getInt(1));
                o.setSoLuong(rs.getInt(2));
                o.setPrice(rs.getInt(3));
                o.setUsername(rs.getString(4));
                o.setPhone(rs.getString(5));
                o.setLink_img(rs.getString(6));
                o.setTong();
                list.add(o);
            }
            return list;
        } catch (Exception e) {   
        }
        return list;
    }
    public static int addToCart(int id, int id_user) {// thêm sản phẩm vào giỏ hàng
        DBContext pool = DBContext.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query
                = "INSERT INTO Cart (id_product, id_user) "
                + "VALUES (?, ?)";
        try {
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, id_user);
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static int deleteProduct(int id, int id_user) {// xóa sản phẩm giỏ hàng
        DBContext pool = DBContext.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query
                = "delete from cart where (id_product='" + id + "' and id_user='" + id_user + "');";
        try {
            ps = connection.prepareStatement(query);
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    public static User getUser(String email) throws SQLException {  //nhận người dùng
        String query = "select * from user where email like '" + email + "';";
//        conn = new DBContext().getConnection(); // kết nối sql
        conn = DBContext.getInstance().getConnection();
        ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
        rs = ps.executeQuery();     //chạy câu lệnh
        User u = new User();
        while (rs.next()) {         // thêm các sản phẩm vào list
            u.setId_user(rs.getInt(1));
            u.setUsername(rs.getString(2));
            u.setAdd(rs.getString(3));
            u.setPhone(rs.getString(4));
            u.setPass(rs.getString(5));
            u.setEmail(rs.getString(6));
            u.setSex(rs.getString(7));
            u.setAdmin(rs.getInt(8));
        }
        return u;
    }

    public List<Product> getCart(int id) {//nhận sản phẩm trong giỏ hàng người dùng
        List<Product> list = new ArrayList<>();
        String query = "select * from product where id_prod in (select id_prod from cart, user, product where  id_product=id_prod and user.id_user=cart.id_user and user.id_user='" + id + "');";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
//                p.setTinhTrang(rs.getInt(10));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getSell(int id) { //danh sách sản phẩm của người bán
        List<Product> list = new ArrayList<>();
        String query = "select * from product where id_seller='" + id + "';";
        try {
//            conn = new DBContext().getConnection(); // kết nối sql
            conn = DBContext.getInstance().getConnection();
            ps = conn.prepareStatement(query); //ném câu lệnh sql vào mysql 
            rs = ps.executeQuery();     //chạy câu lệnh
            while (rs.next()) {         // thêm các sản phẩm vào list
                Product p = new Product();
                p.setId_prod(rs.getInt(1));
                p.setName_prod(rs.getString(2));
                p.setLink_img(rs.getString(3));
                p.setContent(rs.getString(4));
                p.setId_seller(rs.getInt(5));
                p.setCategories(rs.getString(6));
                p.setTuKhoa(rs.getString(7));
                p.setSoLuong(rs.getInt(8));
                p.setPrice(rs.getInt(9));
//                p.setTinhTrang(rs.getInt(10));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
