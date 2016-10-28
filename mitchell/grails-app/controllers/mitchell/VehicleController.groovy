/**
 * Author: Christian Cheng
 * Project: mitchell
 * File: VehicleController.groovy
 */

package mitchell

class VehicleController {

  /* Set default action to list. */
  def index = {
    redirect action: "list";
  }
  
  /* Redirect user to the editing view. */
  def create = {}

  /* Save a new vehicle to the database. */
  def save = {
    def vehicle = new Vehicle(params);
    vehicle.save(flush: true, failOnError: true);
    redirect action: "show", id: vehicle.id;
  }

  /* Load vehicle so the user can update information. */
  def edit = { 
    def vehicle = Vehicle.get(params.id);
    [vehicle: vehicle];
  }

  /* Update the vehicle with user-provided information */
  def update = {
    def vehicle = Vehicle.get(params.id);
    vehicle.properties = params;
    vehicle.save(flush: true, failOnError: true);
    redirect action: "show", id: params.id;
  }
  
  /* Retrieve an object and show it to the user. */
  def show = {
    def vehicle = Vehicle.get(params.id);
    [vehicle: vehicle];
  }

  /* Show all vehicles as a list. */
  def list = {
    def vehicles = Vehicle.list();
    [vehicles: vehicles];
  }

  def filter = {
    def c = Vehicle.createCriteria();
    def vehicles = c.list{
      eqProperty("Year", "1997");
    }
    [vehicles: vehicles];
  }

  /* Remove a vehicle from the database. */
  def delete = {
    def vehicle = Vehicle.get(params.id);
    vehicle.delete(flush: true, failOnError: true);
    redirect action: "index";
  }

}
