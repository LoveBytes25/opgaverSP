package com.library.model;

import java.util.ArrayList;

public class Author {
    protected String name;
    protected ArrayList<Title> titles;

    // Constructor
    public Author(String name){
        this.name = name;
        this.titles = new ArrayList<>();
    }

    // Method for adding title to the titles arraylist
    public void addTitle (Title title){
        titles.add(title);
    }

    // Calculate royalties by iterating through
    // arraylist of titles and adding them up
    public double calculateRoyalties(){
        double totalRoyalties = 0.0;
        for (Title t : titles){
            totalRoyalties += t.calculateRoyalty();
        }
        return totalRoyalties;
    }

    // Get name of author
    public String getName(){
        return this.name;
    }


    public ArrayList<Title> getTitles() {
        return titles;
    }
}
