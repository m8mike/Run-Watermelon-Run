package {
	import Box2D.Dynamics.b2Body;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.geom.Point;
	
	/**
	* игра про арбуз
	* а точнее её физическая часть
	* это значит здесь нет графики
	* только box2D
	* @author Mad Mike
	*/
	public class Platformer {
		public static var instance:Platformer;
		public static var player:Player;
		public static var vehicleManager:VehicleManager;
		public static var locToSpawn:Point;
		public var stage:Stage;
		
		public function Platformer(stage:Stage) {
			this.stage = stage;
			locToSpawn = new Point(5, -5);
			instance = this;
			CameraManager.init();
			PhysicalWorld.setupPhysicsWorld();
			PhysicalWorld.setupDebugDraw();
			new LevelDirector();
			instance.stage.addEventListener(Event.ENTER_FRAME, gameCycle);
			player = new Player(locToSpawn.x, locToSpawn.y);
			vehicleManager = new VehicleManager();
			//new RevolverBonus(locToSpawn.x, locToSpawn.y);
			new Controls();
			new TouchControl(stage);
		}
		
		private static function gameCycle(e:Event):void {
			PhysicalWorld.update();
			CameraManager.update();
			Updatables.updateAll();
			if (Controls.zoom) {
				CameraManager.zoomRatio *= 1.1;
			} else if (Controls.unzoom) {
				CameraManager.zoomRatio /= 1.1;
			}
			if (!VehicleManager.currentVehicle.body) {
				VehicleManager.currentVehicle.show();
			}
			/*if (player) {
				return void;
			}
			if (Controls.up) {
				CameraManager.freePoint.y -= 10 / CameraManager.zoomRatio;
			} else if (Controls.down) {
				CameraManager.freePoint.y += 10 / CameraManager.zoomRatio;
			} else if (Controls.left) {
				CameraManager.freePoint.x -= 10 / CameraManager.zoomRatio;
			} else if (Controls.right) {
				CameraManager.freePoint.x += 10 / CameraManager.zoomRatio;
			}*/
		}
	}
}