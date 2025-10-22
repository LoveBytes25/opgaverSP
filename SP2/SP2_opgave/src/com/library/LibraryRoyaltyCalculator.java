package com.library;

import com.library.model.*;

public class LibraryRoyaltyCalculator {
    public static void main(String[] args) {
        // =======================================TESTING======================================= //

        // TEST 1: Physical titles
        // Instantiate author object
        Author hca = new Author("Hans Christian Andersen");

        // Create book objects, where one is an audiobook
        PrintedBook book1 = new PrintedBook("The Little Mermaid", "SKØN", 472,112);
        PrintedBook book2 = new PrintedBook("Er du i verden vide", "LYRIK",123,1);
        AudioBook book3 = new AudioBook("The Emperor's New Clothes", "BI",397, 59);

        // Add books to the Author's list of titles
        hca.addTitle(book1);
        hca.addTitle(book2);
        hca.addTitle(book3);

        // Print out result nicely
        printLibraryRoyalties(hca);

        // TEST 2: Digital titles
        // Instantiate author object
        Author ds = new Author("Daniel Shiffman");
        Author eh = new Author("Emily Henry");

        // Create EBook & EAudiobook objects
        EBook ebook1 = new EBook("Learning Processing", "FAG", 97, 10,167, 792945, false);
        EBook ebook2 = new EBook("The Nature of Code", "FAG", 40, 6, 108, 1116000, true);
        EAudioBook EAbook = new EAudioBook("Funny Story", "TE", 45, 18, 143, 683);

        // Add titles to the respective authors
        ds.addTitle(ebook1);
        ds.addTitle(ebook2);
        eh.addTitle(EAbook);

        // Print out result nicely
        printLibraryRoyalties(ds);
        printLibraryRoyalties(eh);

        // TEST 3: Controlling the examples in assignment description
        // Create fake author for a non illustrated academic book
        Author testAut = new Author("Test Testerson");

        // Testing EBook
        EBook testBook = new EBook("The theory of testing", "FAG", 97, 50, 205, 360000,false);

        // Add title to author's works
        testAut.addTitle(testBook);

        // Testing the amount of points to check if methods work as intended
        double testCalculation = testAut.calculateRoyalties()/0.067574;
        System.out.println(testCalculation); // Expected output 110770.0

















    }

    public static void printLibraryRoyalties(Author author) {
        double royalties = author.calculateRoyalties();

        System.out.println("\nAuthor: " + author.getName());
        System.out.println("Titles: ");
        for (Title t : author.getTitles()) {
            System.out.println("- " + t.getTitle() + ", " + t.getLiteratureType());
        }
        System.out.printf("\nTotal royalties: %.2f kr\n", royalties);
    }
}