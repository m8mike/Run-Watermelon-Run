package {
	import Box2D.Common.Math.b2Vec2;
	import flash.geom.Point;
	
	public class LevelDirector {
		public static var explodingRoads:Array = [];
		
		public function LevelDirector() {
			SoundMusic.setSoundVolume(1);
			/*new Particle(2, -10);
			new CannonFly(10, -10);*/
			/*new Boost( -15, -3, 3, 3, new b2Vec2( -10, 0));
			new Boost( -20, -3, 3, 3, new b2Vec2( -10*Math.cos(Math.PI/4), -10*Math.sin(Math.PI/4)));
			new Boost( -25, -3, 3, 3, new b2Vec2(0, -1));
			new Boost( -30, -3, 3, 3, new b2Vec2(10*Math.cos(Math.PI/4), -10*Math.sin(Math.PI/4)));
			new Boost( -35, -3, 3, 3, new b2Vec2(10, 0));*/
			/*//new CannonLazyFixedRotation(10, -5);
			///new CannonLazy(15, -5);
			new Cannon(20, -5);
			new CannonFixed(25, -5);
			new CannonFixedRotation(30, -5);
			new CannonMoving(30, -15, new Point(50, -15), -90);
			//new CannonFixed(10, -5);
			//new CannonCircleMoving(10, -5, 3, 0);
			new CannonFollowing(10, -5, new Point(20, -5));
			new CannonFollowing(35, -10, new Point(35, -5));
			new CannonFollowing(0, 0, new Point(100, -100));
			new CannonFollowing(20, -10, new Point(30, -5));
			//new CannonMovingFollowing(10, -5, new Point(30, -5));
			//new CannonRotating(10, -5, 90, -2);
			//new CannonMovingRotating(13, -3, new Point(18, -3), -90);
			//new CannonMoving(13, -3, new Point(18, -3), -90);
			new StandardMoving(20, -3, new Point(20, -7), 3, 1);*/
			//new BombingBat(10, -6);
			//new Polyp(10, -1);
			//new SpringBush(14, -1);
			//new BubbleUpBonus(10, -2);
			//new SpringsBonus(15, -2);
			//new DeltaplanBonus(10, -15);
			/*new Dummy(10, -2);
			new DummyCircle(14, -2);*/
			//new TopHatEnd(10, 0);
			//new Cloud(7, -7);
			/*new UmbrellaBonus(8, -5);
			new JetpackBonus(12, -5);*/
			/*new Bat(10, -6);
			new Ghost(5, -3);
			new Bomb(12, -3);
			new Zombie(18, -2);
			new Werewolf(15, -5);*/
			/*new Bomb(13, -3);
			new Bomb(14, -3);
			new Bomb(15, -3);
			new Bomb(16, -3);
			new Bomb(13, -4);
			new Bomb(14, -4);
			new Bomb(15, -4);
			new Bomb(14, -5);*/
			//var hex:StickyHexagon = new StickyHexagon(10, -4, 2);
			//new TestPlatform(hex.getBody(), 10, -8, 3, 1);
			/*new StickyHexagon(10+2*Math.sqrt(3), -4, 2);
			new StickyHexagon(10+6*Math.sqrt(3), -4, 2);
			new StickyHexagon(10+6*Math.sqrt(3), -10, 2);
			new StickyHexagon(10+7*Math.sqrt(3), -7, 2);
			new StickyHexagon(10 + Math.sqrt(3), -7, 2);
			
			for (var i:int = 0; i < 500; i++) {
				new StickyHexagon(10+(2*i+8)*Math.sqrt(3), -4, 2);
			}*/
			/*new ControlCabin(new CannonRotating(10, -4, 90, 2), 10, -1);
			addBoxWalls();
			new Funicular(10, -10, new Point(20, -12));*/
			//new HotAirBalloon(0, -10);
			//new Train();
			//new Blob(0, 3, new Car(10, -6));
			//new CarBuilder(10, -6);
			//new HotAirBalloon(10, -3);
			/*new Crate(12, -6);
			new Crate(12, -5);
			new Crate(12, -7);
			new Crate(12, -8);
			new Crate(13, -6);
			new Crate(13, -5);
			new Crate(13, -7);
			new Crate(13, -8);
			new Crate(14, -6, true);
			new Crate(14, -8, true);
			new Crate(14, -10, true);
			new Crate(14, -12, true);
			new Crate(16, -6, true);
			new Crate(16, -8, true);
			new Crate(16, -10, true);
			new Crate(16, -12, true);*/
			//new Tank2(10, -3);
			//new Car3(10, -3);
			//new Car2(10, -3);
			//new Car1(10, -3);
			//new Car4(10, -3);
			/*Updatables.addCharacter(new FerrisWheel(0, -10, 2));
			new SpringBall(100, -10);
			new GravityCircle(100, -10, 20);*/
			/*var nextHeight:Number =  140 + Math.random() * 200;
			var terrain:DynamicTerrain;
			for (var j:int = -300; j < 300; j++) {
				terrain = new DynamicTerrain(j * 640 / 20, 0, nextHeight);
				nextHeight = terrain.nextHill;
				//new Boost(j * 640 / 20, nextHeight / 20 - 3);
			}*/
			//new Straight(new Point( -10, 10), 100);
			//new NormalHills(new Point( -10, 10), 100);
			var startPoint:Point = new Point(-20, 10);
			var terrain:Terrain = new DownHillTerrain(startPoint, 1);
			//terrain = new NormalHills(startPoint, 1000);
			for (var i:int = 0; i < 100; i++) {
				startPoint = terrain.finishPoint.clone();
				switch (int(Math.random()*7)) {
					case 0:
						terrain = new DownHillTerrain(startPoint, 1);
					break;
					case 1:
						terrain = new LowHills(startPoint, 1);
					break;
					case 2:
						terrain = new NormalHills(startPoint, 1);
					break;
					case 3:
						terrain = new HighHills(startPoint, 1);
					break;
					case 4:
						terrain = new UpHillTerrain(startPoint, 1);
					break;
					case 5:
						var numBoxes:int = int(Math.random() * 10);
						new StraightSpikes(new Point(startPoint.x, 10+startPoint.y/20+3), numBoxes);
						explodingRoads.push(terrain = new ExplodingRoad(new Point(startPoint.x, 10+startPoint.y/20), 5*numBoxes));
					break;
					case 6:
						terrain = new LadderTerrain(new Point(startPoint.x, 10+startPoint.y/20), int(Math.random() * 10));
					break;
					default:
				}
			}
			/*var t1:Terrain = new DownHillTerrain(new Point( -10, 10), 1);
			var t2:Terrain = new LowHills(t1.finishPoint, 1);
			var t3:Terrain = new NormalHills(t2.finishPoint, 1);
			var t4:Terrain = new HighHills(t3.finishPoint, 1);
			var t5:Terrain = new UpHillTerrain(t4.finishPoint, 1);*/
			//new LadderTerrain(new Point(-10, 10), 100);
			//new DownHillTerrain(new Point( -10, 10), 100);
			//explodingRoads.push(new ExplodingRoad(new Point(-10, 10), 100));
			//new StraightSpikes(new Point(-10, 13), 100);
			/*var nextHeight:Number =  140 + Math.random() * 200;
			var terrain:DynamicTerrain;
			for (var j:int = -300; j < 300; j++) {
				if (j % 2) {
					for (var i:int = 0; i < 16; i++) {
						explodingPlatforms.push(new ExplodingPlatform(j * 640 / 20 + i * 2, nextHeight / 20, 2, 2));
					}
					new Spikes(j * 640 / 20, nextHeight / 20 + 4, 640 / 20, 2);
				} else {
					terrain = new DynamicTerrain(j * 640 / 20, 0, nextHeight);
					nextHeight = terrain.nextHill;
				}
			}*/
			/*for (var j:int = -300; j < 300; j++) {
				new Standard(j * 500 / 20, 0, 500/20,2);
			}*/
			/*for (var j:int = -300; j < 300; j++) {
				var platform:Standard = new Standard(j * 500 / 20, 0, Math.sqrt(8), 2);
				platform.setAngle( -45);
				new Standard(j * 500 / 20 + 2, -2, 210/20, 2);
				platform = new Standard(j * 500 / 20 + 250 / 20, -2, Math.sqrt(8), 2);
				platform.setAngle(45);
				new Standard(j * 500 / 20 + 250 / 20 + 2, 0, 210 / 20, 2);
				new BubbleBonus(j * 500 / 20, -4);
			}*/
			/*for (var i:int = 3; i < 5; i++) {
				terrain = new DynamicUphill(i * 640 / 20, 0, nextHeight);
				nextHeight = terrain.nextHill;
			}
			terrain = new DynamicTerrain(5 * 640 / 20, 0, nextHeight);
			nextHeight = terrain.nextHill;
			for (i = 6; i < 500; i++) {
				terrain = new DynamicDownhill(i * 640 / 20, 0, nextHeight);
				nextHeight = terrain.nextHill;
			}*/
			//new RandomMap();
		}
		
		private function addBoxWalls():void {
			new Gummy(-2, -14, 2, 15);
			new Gummy(25, -14, 2, 15);
		}
		
		private function addWalls():void {
			new Gummy(-2, -14, 2, 15);
			new Gummy(5, -14, 2, 15);
			new Sticky(12, -14, 2, 15);
			new Sticky(19, -14, 2, 15);
			new Standard(26, -14, 2, 15);
			new Standard(33, -14, 2, 15);
		}
		
		private function addStickyBalls():void {
			new SpringBall(12, -1);
			new SpringBall(8, -1);
			new SpringBall(10, -4);
			new SpringBall(6, -4);
			new SpringBall(4, -1);
			new SpringBall(2, -4);
			new SpringBall(12, -7);
			new SpringBall(8, -7);
			new SpringBall(10, -10);
			new SpringBall(6, -10);
			new SpringBall(4, -7);
			new SpringBall(2, -10);
		}
	}
}