package com.library.model;

public abstract class NetTitle extends Title{
    private int availability; // Amount of communes in which you can loan the book
    private int reach; // Amount of communes where the book is loaned out
    private int use; // Amount of loans

    public NetTitle(String title, String literatureType, int availability, int reach, int use){
        super(title,literatureType);
        this.availability = availability;
        this.reach = reach;
        this.use = use;
    }

    protected double getPseudoCopies(){
        return (reach * 5) + (availability * 0.5) + use;
    }

    private int getUseFactor(){
        return use;
    }

    public int getAvailability() {
        return availability;
    }

    public int getReach() {
        return reach;
    }

    public int getUse() {
        return use;
    }
}
