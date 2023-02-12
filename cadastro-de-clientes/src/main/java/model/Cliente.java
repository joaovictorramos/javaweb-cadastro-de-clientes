package model;

import DAO.ConexaoBancodeDados;

public class Cliente {
   private String name;
   private String phone;
   private String email;

    public Cliente() {
    }

    public Cliente(String name, String phone, String email) {
        this.name = name;
        this.phone = phone;
        this.email = email;
    }
    
    public void salvar(Cliente cliente){
        ConexaoBancodeDados dao = new ConexaoBancodeDados();
        dao.saveCustomer(cliente);
        System.out.println("Name: " + getName() + "\nPhone: " + getPhone() + "\nEmail: " + getEmail() + " \n");
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
