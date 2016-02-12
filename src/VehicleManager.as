package  {
	/**
	 * ...
	 * @author Mad Mike
	 */
	public class VehicleManager {
		public static var tank:Tank;
		public static var car:Car2;
		public static var car3:Car3;
		public static var car4:Car4;
		public static var currentVehicle:Vehicle;
		
		public function VehicleManager() {
			/*createCar();
			currentVehicle = car;*/
			createTank();
			currentVehicle = tank;
		}
		
		private function createCar4():void {
			car4 = new Car4(5, -5);
			Controls.enter = true;
			car4.hit(Platformer.player.getBody());
		}
		
		private function createCar3():void {
			car3 = new Car3(5, -5);
			Controls.enter = true;
			car3.hit(Platformer.player.getBody());
		}
		
		private function createCar():void {
			car = new Car2(5, -5);
			Controls.enter = true;
			car.hit(Platformer.player.getBody());
		}
		
		private function createTank():void {
			tank = new Tank(5, -5);
			Controls.enter = true;
			tank.hit(Platformer.player.getBody());
		}
		
		public function respawn():void {
			currentVehicle.respawn();
			for each (var road:ExplodingRoad in LevelDirector.explodingRoads) {
				road.restart();
			}
		}
	}
}