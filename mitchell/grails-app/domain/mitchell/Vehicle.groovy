/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: Vehicle.groovy
 */

package mitchell

class Vehicle {

  public int year;
  public String make;
  public String model;

  static constraints = {
    year (blank: false, minSize: 1950, maxSize: 2050)
    make (blank: false)
    model(blank: false)
  }

  public int getyear() {
    return this.year;
  }

  public void setyear(int yearToSet) {
    this.year = yearToSet;
  }

  public String getmake() {
    return this.make;
  }

  public void setmake(String makeToSet) {
    this.make = makeToSet;
  }

  public String getmodel() {
    return this.model;
  }

  public void setmodel(String modelToSet) {
    this.model = modelToSet;
  }
}
