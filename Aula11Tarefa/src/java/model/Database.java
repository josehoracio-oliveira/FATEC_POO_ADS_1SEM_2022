/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class Database{
    public static ArrayList<Disciplina> getDisciplina()
    {
        ArrayList<Disciplina> list = new ArrayList<>();
        list.add(new Disciplina("ILP007","Programação Orientada a Objeto", "Ementa de POO", "Segunda-feira", "19:00 - 22:30"));
        list.add(new Disciplina("ISG003","Segurança da Informação", "Ementa de SI", "Terça-feira", "20:50 - 22:30"));
        list.add(new Disciplina("IBD100","Lab. Banco de Dados", "Ementa de LAB. BD", "Quarta-feira", "19:00 - 22:30"));
        list.add(new Disciplina("IES301","Lab. Eng. Software", "Ementa de LAB. ES", "Quinta-feira", "19:00 - 22:30"));
        list.add(new Disciplina("AGO005","Gestão de Projetos", "Ementa de Gestão de Projetos", "Sexta-feira", "19:00 - 22:30"));
        return list;
    }
}
