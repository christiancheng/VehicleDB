/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: Vehicle.groovy
 */

package mitchell

class Vehicle {

  //public int Id;
  public int Year;
  public String Make;
  public String Model;

  static constraints = {
    //Id   (blank: false)
    Year (blank: false)
    Make (blank: false)
    Model(blank: false)
  }

  public int getYear() {
    return this.Year;
  }

  public void setYear(int YearToSet) {
    this.Year = YearToSet;
  }

  public String getMake() {
    return this.Make;
  }

  public void setMake(String MakeToSet) {
    this.Make = MakeToSet;
  }

  public String getModel() {
    return this.Model;
  }

  public void setModel(String ModelToSet) {
    this.Model = ModelToSet;
  }
}