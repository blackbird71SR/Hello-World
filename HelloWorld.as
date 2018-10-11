package {
import flash.display.Sprite;
import flash.events.Event;

public class MyApp extends Sprite {
  public function MyApp() {
    trace("Hello, world!");
    addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
  }

  private function onAddedToStage(e:Event):void {
    trace("Initialization that depends on stage.");
  }
}
}