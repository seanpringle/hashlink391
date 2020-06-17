class Main {

  static function main() {
    new Main();
  }

  public function new() {
    Entity.init();
    var en = Entity.add();
    trace(en.box);
  }
}