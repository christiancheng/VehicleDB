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

  void "Test index redirecting"() {
    when:
    controller.index();

    then:
    response.redirectedUrl == '/vehicle/list';
  }

  void "Test saving the first valid vehicle"() {
    when:
    params.Year = "1997";
    params.Make = "Toyota";
    params.Model = "Camry";

    controller.save();

    then:
    response.redirectedUrl == '/vehicle/show/1';
    Vehicle.count() == 1;
  }

  void "Test saving another valid vehicle"() {
    when:
    params.Year = "2014";
    params.Make = "Dodge";
    params.Model = "Challenger";

    controller.save();

    then:
    response.redirectedUrl == '/vehicle/show/1';
    Vehicle.count() == 1;
  }
}
