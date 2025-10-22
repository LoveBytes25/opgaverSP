package com.library.model;

public class EAudioBook extends NetTitle implements IAudioBook{
    private int durationInMinutes;

    public EAudioBook(String title, String literatureType, int availability, int reach, int use, int durationInMinutes){
        super(title, literatureType, reach, use, availability);
        this.durationInMinutes = durationInMinutes;
    }

    @Override
    protected double calculatePoints(){
        return (double) durationInMinutes/2 * convertLiteratureType()
                * ((getReach() * 5) + (getAvailability()
                * 0.5) + getUse());
    }

    @Override
    public int getDurationInMinutes() {
        return durationInMinutes;
    }
}
