/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: Vehicle.groovy
 */

package mitchell

class Vehicle {

  int year;
  String make;
  String model;

  /* Constraints on Vehicle properties, with validation. */
  static constraints = {
    year (blank: false, minSize: 1950, maxSize: 2050)
    make (blank: false)
    model(blank: false)
  }
}
