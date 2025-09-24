public class Country { // Declare country class
  String name; // Country name
  PImage flagImage; // To load image from file
  color accentColor; // Accent color is the little rectangle on the right side, matching the title of the group 

  Country (String name, String flagFile, color accentColor) { // Constructor
    this.name = name;
    this.flagImage = loadImage(flagFile);
    this.accentColor = accentColor;
  }

  // Method to display flag at given location
  void display (float xPos, float yPos, float countryWidth, float countryHeight) {
    fill(255); // White rectangles
    noStroke(); // No outline
    rect(xPos, yPos, countryWidth, countryHeight); // Create white rectangles 

    // Load flag image from file
    image(flagImage, xPos, yPos, 70, countryHeight); 

    // Add gradient shadow to flag using loop and alpha value
    float shadowWidth = 10;
    float edgeOfFlag = xPos + 70;
    for (int i = 0; i < shadowWidth; i++) {
      float alpha = map(i, 0, shadowWidth - 1, 100, 0);
      stroke(0, alpha);
      line(edgeOfFlag + i, yPos, edgeOfFlag + i, yPos + countryHeight);
    }

    // Load country texts
    textAlign(LEFT, CENTER); // Leftaligned horizontally, center vertically
    PFont countryFont = createFont("ARIAL BOLD", 30); // Find suitable font and size
    textFont(countryFont);
    fill(0); // Black text
    text(name, xPos + 70 + 25, yPos + countryHeight/2); // xPos + width of flag + some spacing so there's space for the gradient

    // Accent banner to the right of country name
    float groupColoredRect_width = 10;
    float groupColoredRect_height = countryHeight;
    fill(accentColor);
    rect(xPos + 550 - groupColoredRect_width, yPos, groupColoredRect_width, groupColoredRect_height);
  }
}
