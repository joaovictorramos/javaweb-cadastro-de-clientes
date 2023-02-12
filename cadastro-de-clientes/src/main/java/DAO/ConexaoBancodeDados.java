package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import model.Cliente;

public class ConexaoBancodeDados {
    /* Módulo de Conexão */
    //Parâmentos de Conexão
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/cadastrodb";
    
    private String user = "root";
    private String password = "my_servidor_sql999";
    
    /* Método de Conexão */
    private Connection conectar(){
        Connection con = null;
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url, user, password);
            return con;
        }catch(Exception e){
            System.out.println(e);
            return null;
        }
    }
    
    public void saveCustomer(Cliente cliente){
        String create = "insert into cliente (nome,phone,email) values (?,?,?)";
        try{
           Connection con = conectar();
           PreparedStatement pst = con.prepareStatement(create);
           
           pst.setString(1, cliente.getName());
           pst.setString(2, cliente.getPhone());
           pst.setString(3, cliente.getEmail());
           pst.executeUpdate();
           
           con.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }
    //Teste de Conexão
    /*public void testeConexão(){
        try{
            Connection con = conectar();
            System.out.println(con);
            con.close();
        }catch(Exception e){
            System.out.println(e);
        }
    }*/
}
