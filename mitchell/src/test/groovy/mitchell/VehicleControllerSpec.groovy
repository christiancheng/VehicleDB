/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: VehicleControllerSpec.groovy
 */

package mitchell

import grails.test.mixin.TestFor
import grails.test.mixin.Mock
import spock.lang.Specification

@TestFor(VehicleController)
@Mock(Vehicle)
class VehicleControllerSpec extends Specification {

  def setup() {
  }

  def cleanup() {
  }

  void "Test index view redirecting"() {
    when:
    controller.index();

    then:
    response.redirectedUrl == '/vehicle/list';
  }

  void "Test create view redirecting"() {
    when:
    controller.params.year = 1997;
    controller.params.make = "Toyota";
    controller.params.model = "Camry";

    controller.save(flush: true);

    then:
    response.redirectedUrl == '/vehicle/show/1';
    Vehicle.count() == 1;
  }

  void "Test creating and updating a vehicle"() {
    when:
    def vehicle = new Vehicle(year: 1997, make: "Ford", model: "Fiesta");
    vehicle.save(flush: true);
    
    Map newParams = [id: vehicle.id, year: 1998, make: "Ford", model:
      "Focus"];
    (controller.params).putAll(newParams);
    controller.update(flush: true);

    then:
    Vehicle.list().size() == 1;
    Vehicle.get(vehicle.id).year == 1998;
    Vehicle.get(vehicle.id).make == "Ford";
    Vehicle.get(vehicle.id).model == "Focus";
  }

  void "Test creating two vehicles and updating the first one"() {
    when:
    def vehicle = new Vehicle(year: 2014, make: "Toyota", model: "Camry");
    vehicle.save(flush: true);

    def vehicle2 = new Vehicle(year: 2000, make: "Dodge", model: "Challenger");
    vehicle2.save(flush: true);

    Map newParams = [id: vehicle.id, year: 2000, make: "Tesla", model:
      "Model S"];
    (controller.params).putAll(newParams);
    controller.update(flush: true);

    then:
    Vehicle.list().size() == 2;
    (Vehicle.get(vehicle.id)).id == vehicle.id;
    (Vehicle.get(vehicle2.id)).id == vehicle2.id;
    Vehicle.get(vehicle.id).year == 2000;
    Vehicle.get(vehicle.id).make == "Tesla";
    Vehicle.get(vehicle.id).model == "Model S";
    Vehicle.get(vehicle2.id).year == 2000;
    Vehicle.get(vehicle2.id).make == "Dodge";
    Vehicle.get(vehicle2.id).model == "Challenger";
  }

  void "Test creating a vehicle"() {
    when:
    def vehicle = new Vehicle(year: 2015, make: "Tesla", model: "Model S");
    vehicle.save(flush: true);

    then:
    Vehicle.list().size() == 1;
    Vehicle.first().id == vehicle.id;
  }

  void "Test creating two vehicles and reading the second one"() {
    when:
    def vehicle = new Vehicle(year: 2014, make: "Toyota", model: "Camry");
    vehicle.save(flush: true);

    def vehicle2 = new Vehicle(year: 2000, make: "Dodge", model: "Challenger");
    vehicle2.save(flush: true);

    then:
    Vehicle.list().size() == 2;
    (Vehicle.get(vehicle2.id)).id == vehicle2.id;
  }

  void "Test creating two vehicles and deleting the first one"() {
    when:
    def vehicle = new Vehicle(year: 2002, make: "Toyota", model: "Camry");
    vehicle.save(flush: true);

    def vehicle2 = new Vehicle(year: 2004, make: "Toyota", model: "Corolla");
    vehicle2.save(flush: true);

    vehicle.delete(flush: true);

    then:
    Vehicle.list().size() == 1;
    (Vehicle.first()).id == vehicle2.id;
  }

  void "Test creating four vehicles and deleting all of them"() {
    when:
    def vehicle = new Vehicle(year: 2002, make: "Toyota", model: "Camry");
    vehicle.save(flush: true);

    def vehicle2 = new Vehicle(year: 2004, make: "Honda", model: "Odyssey");
    vehicle2.save(flush: true);

    def vehicle3 = new Vehicle(year: 2006, make: "Ford", model: "Focus");
    vehicle3.save(flush: true);

    def vehicle4 = new Vehicle(year: 1950, make: "Hyundai", model: "Sonata");
    vehicle4.save(flush: true);

    vehicle.delete();
    vehicle2.delete();
    vehicle3.delete();
    vehicle4.delete(flush: true);

    then:
    Vehicle.list().size() == 0;
  }
  
  void "Test creating and deleting a vehicle"() {
    when:
    def vehicle = new Vehicle(year: 1997, make: "Ford", model: "Fiesta");
    vehicle.save(flush: true);

    vehicle.delete(flush: true);

    then:
    vehicle.exists(vehicle.id) == false;
    Vehicle.list().size() == 0;
  }
}
