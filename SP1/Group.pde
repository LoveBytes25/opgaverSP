  // Variables to hold colors of groups
  color groupAColor = color(95, 205, 239);
  color groupBColor = color(249, 250, 87);
  color groupCColor = groupAColor;
  color groupDColor = groupBColor;

public class Group { // Making code more object oriented by adding classes
  String name; // Name of group
  Country[] countries; // Array to hold countries
  float xPos; // Position of group
  float yPos; // Position of group
  float groupWidth; // Width of group
  float groupHeight; // Height of group
  
  Group(String groupName, float xPos, float yPos, float groupWidth, float groupHeight) {
    this.name = groupName;
    this.xPos = xPos;
    this.yPos = yPos;
    this.groupWidth = groupWidth;
    this.groupHeight = groupHeight;
    this.countries = new Country[4]; // Array to hold 4 countries within a group
  }

  void addCountry(int index, Country country) { // Method to fill countries array, used in main method
    if (index >= 0 && index < 4) {
      countries[index] = country;
    }
  }

  void display() {
    // Text size and font for group names
    PFont groupFont = createFont("Arial Bold", 18);
    textAlign(CENTER, CENTER);
    textFont(groupFont);
    text(name, xPos+groupWidth/2, yPos + 25); // Display the group name
    
    // White line in the middle that seperates the groups
    stroke(255);
    strokeWeight(4);
    line(width/2-20, 0, width/2-20, height);

    // Adjustable spacing between the countries, and the yPos of the country start
    float countryHeight = 45;
    float countrySpacing = 8;
    float countryStartY = yPos + 40;
    float countryWidth = 550;

    // Loop to draw all the rectangular brackets using the Country.display() method
    for (int i = 0; i < countries.length; i++) {
      if (countries[i] != null) { // Make sure not to draw anything if array at index position is empty
        float countryY = countryStartY + i * (countryHeight+ countrySpacing);
        countries[i].display(xPos + 5, countryY, countryWidth, countryHeight);
      }
    }
  }
}
