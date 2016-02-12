package {
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.TouchEvent;
	/**
	 * ...
	 * @author Mad Mike
	 */
	public class TouchControl {
		
		public function TouchControl(stage:Stage) {
			addButtons(stage);
		}
		
		private function addButtons(stage:Stage):void {
			var centerX:Number = stage.fullScreenWidth * 0.5;
			var centerY:Number = stage.fullScreenHeight * 0.5;
			var buttonGas:MovieClip = new MovieClip();
			buttonGas.graphics.beginFill(0x000000, 0.01);
			buttonGas.graphics.drawRect(centerX*1.5, centerY, centerX/2, centerY);
			buttonGas.graphics.endFill();
			buttonGas.addEventListener(TouchEvent.TOUCH_BEGIN, pressGas);
			buttonGas.addEventListener(TouchEvent.TOUCH_END, unpressGas);
			stage.addChild(buttonGas);
			var buttonGasReverse:MovieClip = new MovieClip();
			buttonGasReverse.graphics.beginFill(0xFF8000, 0.01);
			buttonGasReverse.graphics.drawRect(centerX, centerY, centerX/2, centerY);
			buttonGasReverse.graphics.endFill();
			buttonGasReverse.addEventListener(TouchEvent.TOUCH_BEGIN, pressGasReverse);
			buttonGasReverse.addEventListener(TouchEvent.TOUCH_END, unpressGasReverse);
			stage.addChild(buttonGasReverse);
			var buttonRotateLeft:MovieClip = new MovieClip();
			buttonRotateLeft.graphics.beginFill(0xFF0000, 0.01);
			buttonRotateLeft.graphics.drawRect(0, 0, centerX, centerY);
			buttonRotateLeft.graphics.endFill();
			buttonRotateLeft.addEventListener(TouchEvent.TOUCH_BEGIN, pressLeft);
			buttonRotateLeft.addEventListener(TouchEvent.TOUCH_END, unpressLeft);
			stage.addChild(buttonRotateLeft);
			var buttonRotateRight:MovieClip = new MovieClip();
			buttonRotateRight.graphics.beginFill(0x0000FF, 0.01);
			buttonRotateRight.graphics.drawRect(0, centerY, centerX, centerY);
			buttonRotateRight.graphics.endFill();
			buttonRotateRight.addEventListener(TouchEvent.TOUCH_BEGIN, pressRight);
			buttonRotateRight.addEventListener(TouchEvent.TOUCH_END, unpressRight);
			stage.addChild(buttonRotateRight);
			var buttonJump:MovieClip = new MovieClip();
			buttonJump.graphics.beginFill(0x0000FF, 0.01);
			buttonJump.graphics.drawRect(centerX, 0, centerX, centerY);
			buttonJump.graphics.endFill();
			buttonJump.addEventListener(TouchEvent.TOUCH_BEGIN, pressJump);
			buttonJump.addEventListener(TouchEvent.TOUCH_END, unpressJump);
			stage.addChild(buttonJump);
		}
		
		private function unpressJump(e:TouchEvent):void {
			VehicleManager.tank.jump.dontJump();
		}
		
		private function pressJump(e:TouchEvent):void {
			VehicleManager.tank.jump.jump();
		}
		
		private function unpressRight(e:TouchEvent):void {
			Controls.right = false;
		}
		
		private function pressRight(e:TouchEvent):void {
			Controls.right = true;
		}
		
		private function unpressLeft(e:TouchEvent):void {
			Controls.left = false;
		}
		
		private function pressLeft(e:TouchEvent):void {
			Controls.left = true;
		}
		
		private function unpressGas(e:TouchEvent):void {
			Controls.up = false;
		}
		
		private function pressGas(e:TouchEvent):void {
			Controls.up = true;
		}
		
		private function unpressGasReverse(e:TouchEvent):void {
			Controls.down = false;
		}
		
		private function pressGasReverse(e:TouchEvent):void {
			Controls.down = true;
		}
	}
}