package com.library.model;

public abstract class PhysicalTitle extends Title{
    private int copies;

    public PhysicalTitle(String title, String literatureType, int copies){
        super(title, literatureType);
        this.copies = copies;
    }

    public int getCopies(){
        return copies;
    }
}
