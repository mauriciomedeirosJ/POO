/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 *
 * @author Maurício
 */
public class Contato {

    String nome;
    String email;
    String telefone;

    public Contato(String _nome, String _email, String _telefone) {
        this.nome = _nome;
        this.email = _email;
        this.telefone = _telefone;
    }

    public void setNome(String _nome) {
        this.nome = _nome;
    }

    public void setEmail(String _email) {
        this.email = _email;
    }

    public void setTelefone(String _telefone) {
        this.telefone = _telefone;
    }

    public String getNome() {
        return this.nome;
    }
    public String getEmail() {
        return this.email;
    }
    public String getTelefone() {
        return this.telefone;
    }
}
