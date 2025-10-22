package com.library.model;

public abstract class Title {
    protected String title;
    protected String literatureType;
    protected static final double RATE = 0.067574;

    public Title (String title, String literatureType){
        this.title = title;
        this.literatureType = literatureType;
    }

    public double calculateRoyalty(){
        return calculatePoints() * RATE;
    }

    protected abstract double calculatePoints();

    protected double convertLiteratureType(){
        switch(literatureType){
            case "BI":
                return 3.0;
            case "TE":
                return 3.0;
            case "LYRIK":
                return 6.0;
            case "SKØN":
                return 1.7;
            case "FAG":
                return 1.0;
            default:
                return 0;
        }

    }

    public String getTitle() {
        return title;
    }

    public String getLiteratureType() {
        return literatureType;
    }
}
