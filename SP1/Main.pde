// 02/09 Began project with hardcoded loops for various rectangles
// 04/09 Added classes and refactored
// 08/09 Added arrays to hold Group objects 
// 13/09 Refactored createGroups() such that the setup() method only contains a few lines of code
// 18/09 Added instance variable accentColor to Country class to add more details
// 19/09 Changed scope and variable names as well as adding comments to understand code better
// 24/09 Added a loop in the Country class to add a graident shadow using alpha
// 24/09 Comments, finishing touches



// An array to hold all the groups
Group[] groups;

void setup(){
  size(1240, 534); // Exact pixel size of given image to recreate
  background(29,44,70); // Background color
  createGroups(); // Create groups each holding 4 countries
  displayGroups(); // Display the groups
}

void createGroups(){ // Method to display groups, each containing 4 countries
  groups = new Group[4]; //Array of group objects
  
  // x and y positions along width total width and height of each group (4 countries), plus adjustable spacing
  float groupWidth = width/2 - 22/2 - 12; // Calculated using pixel photo editor tool 
  float groupHeight = height/2 - 20; // Calculated using pixel photo editor tool 
  float spacing = 11; 
  float startX = (width - (2 * groupWidth + spacing)) / 2;
  float startY = (height - (2 * groupHeight + spacing)) / 2; 
  
  // Fill array with Country objects and their corresponding accent color and file path, using addCountry() method defined in Group class
  // Group A 
  groups[0] = new Group("GROUP A", startX, startY, groupWidth, groupHeight);
  groups[0].addCountry(0, new Country("RUSSIA", "Russia.png", groupAColor));
  groups[0].addCountry(1, new Country("SAUDI ARABIA", "SaudiArabia.png", groupAColor));
  groups[0].addCountry(2, new Country("EGYPT", "Egypt.png", groupAColor));
  groups[0].addCountry(3, new Country("URUGUAY", "Uruguay.png", groupAColor));
  
  // Group B 
  groups[1] = new Group("GROUP B", startX, startY + groupHeight + spacing, groupWidth, groupHeight);
  groups[1].addCountry(0, new Country("PORTUGAL", "Portugal.png", groupBColor)); // Highlighted
  groups[1].addCountry(1, new Country("SPAIN", "Spain.png", groupBColor));
  groups[1].addCountry(2, new Country("MOROCCO", "Morocco.png", groupBColor));
  groups[1].addCountry(3, new Country("IRAN", "Iran.png", groupBColor));
  
  // Group C
  groups[2] = new Group("GROUP C", startX + groupWidth + spacing, startY, groupWidth, groupHeight);
  groups[2].addCountry(0, new Country("FRANCE", "France.png", groupCColor));
  groups[2].addCountry(1, new Country("AUSTRALIA", "Australia.png", groupCColor));
  groups[2].addCountry(2, new Country("PERU", "Peru.png", groupCColor));
  groups[2].addCountry(3, new Country("DENMARK", "Denmark.png", groupCColor));
  
  // Group D
  groups[3] = new Group("GROUP D", startX + groupWidth + spacing, startY + groupHeight + spacing, groupWidth, groupHeight);
  groups[3].addCountry(0, new Country("ARGENTINA", "Argentina.png", groupDColor)); 
  groups[3].addCountry(1, new Country("ICELAND", "Iceland.png", groupDColor));
  groups[3].addCountry(2, new Country("CROATIA", "Croatia.png", groupDColor));
  groups[3].addCountry(3, new Country("NIGERIA", "Nigeria.png", groupDColor));
}

// Display groups using Group.display() function, making sure to use the right color 
void displayGroups(){
  fill(groupAColor);
  groups[0].display();
  fill(groupBColor);
  groups[1].display();
  fill(groupCColor);
  groups[2].display();
  fill(groupDColor);
  groups[3].display();  
  }
