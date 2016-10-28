package mitchell


import grails.test.mixin.integration.Integration
import grails.transaction.*
import spock.lang.*

@Integration
@Rollback
class VehicleControllerSpec extends Specification {

  def setup() {
  }

  def cleanup() {
  }

  void "Test deleting a vehicle"() {
    def vehicle = new Vehicle(Year: 1997, Make: "Ford", Model: "Fiesta");
    vehicle.delete();

    expect:
    vehicle.exists(vehicle.id) == false;
  }
}
