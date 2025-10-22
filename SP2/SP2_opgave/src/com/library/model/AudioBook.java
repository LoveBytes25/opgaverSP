package com.library.model;

public class AudioBook extends PhysicalTitle implements IAudioBook {
    private int durationInMinutes;
    private int copies;

    public AudioBook(String title, String literatureType, int copies, int durationInMinutes){
        super(title, literatureType, copies);
        this.durationInMinutes = durationInMinutes;
    }

    @Override
    protected double calculatePoints(){
        return durationInMinutes * 0.5 * copies * convertLiteratureType();
    }

    @Override
    public int getDurationInMinutes() {
        return durationInMinutes;
    }

    public int getCopies() {
        return copies;
    }
}
