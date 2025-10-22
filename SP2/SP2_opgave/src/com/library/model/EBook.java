package com.library.model;

public class EBook extends NetTitle{
    private int characters;
    private boolean illustrated;

    public EBook(String title, String literatureType, int availability, int reach, int use, int characters, boolean illustrated){
        super(title, literatureType, availability, reach, use);
        this.characters = characters;
        this.illustrated = illustrated;
    }

    private double calculatePages(){
        if (illustrated){
            return ((double) characters / 1800 + 20) * 1.10;
        }
        return (double) characters / 1800 + 20;
    }

    @Override
    protected double calculatePoints(){
        return calculatePages() * convertLiteratureType() * ((getReach() * 5) +
                (getAvailability() * 0.5) + getUse());
    }

    public int getCharacters() {
        return characters;
    }
}
