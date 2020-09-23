/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo;

/**
 * * @author Maurício
 */
public class Horario {
    int horas;
    int minutos;
    int segundos;
    
    
    public Horario(int segundos, int minutos, int horas) {
        this.horas = horas;
        this.minutos = minutos;
        this.segundos = segundos;
    }
    
    public String getHorario() {
        return this.horas+":"+this.minutos+":"+this.segundos;
    }
    
    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        this.segundos = segundos;
    }
    
    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        this.minutos = minutos;
    }
    
    public int getHoras() {
        return horas;
     
}
}