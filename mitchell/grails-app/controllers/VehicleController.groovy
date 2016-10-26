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
    vehicle.save flush: true, failOnError: true;
    redirect action: "show", Id: vehicle.Id;
  }

  /* Load vehicle so the user can update information. */
  def edit = { 
    def vehicle = Vehicle.get(params.Id);
    [vehicle: vehicle];
  }

  /* Update the vehicle with user-provided information */
  def update = {
    def vehicle = Vehicle.get(params.Id);
    vehicle.properties = params;
    vehicle.save flush: true, failOnError: true;
    redirect action: "show", Id: params.Id;
  }
  
  /* Retrieve an object and show it to the user. */
  def show = {
    def vehicle = Vehicle.get(params.Id);
    [vehicle: vehicle];
  }

  /* Show all vehicles as a list. */
  def list = {
    def vehicles = Vehicle.list();
    [vehicles: vehicles];
  }

  /* Remove a vehicle from the database. */
  def delete = {
    def vehicle = Vehicle.get(params.Id);
    vehicle.delete flush: true, failOnError: true;
    redirect action: "index";
  }

}
