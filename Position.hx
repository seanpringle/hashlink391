
abstract Position(Int) {

	public var x(get,set):Single;
	public var y(get,set):Single;
	public var z(get,set):Single;

	public static var positions:hl.NativeArray<Single>;

	public static function init() {
		positions = new hl.NativeArray<Single>(Entity.slots*3);
	}

	public static function slot(en:Entity):Position {
		return new Position(en.slot*3);
	}

	public function new(offset:Int) {
		this = offset;
	}

	public function get_x():Single {
		return positions[this];
	}

	public function get_y():Single {
		return positions[this+1];
	}

	public function get_z():Single {
		return positions[this+2];
	}

	public function set_x(f:Single):Single {
		positions[this] = f;
		return f;
	}

	public function set_y(f:Single):Single {
		positions[this+1] = f;
		return f;
	}

	public function set_z(f:Single):Single {
		positions[this+2] = f;
		return f;
	}
}
