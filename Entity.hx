
abstract Entity(Int) {

	public static final slots:Int = 1024;
	public static var sequence:Int;
	public static var flags:hl.NativeArray<Int>;

	public static function init() {
		sequence = 1; // 0 reserved
		flags = new hl.NativeArray<Int>(slots);
		Position.init();
	}

	public static function add():Entity {
		if (sequence == slots) {
			throw 'out of slots!';
		}
		var slot = sequence++;
		flags[slot] = 0;
		return new Entity(slot);
	}

	public var self(get,never):Entity;
	public var slot(get,never):Int;
	public var pos(get,never):Point;
	public var box(get,never):Box;

	public function new(n:Int) {
		this = n;
	}

	public function get_slot():Int {
		return this;
	}

	public function get_self():Entity {
		return new Entity(this);
	}

	public function get_pos():Point {
		var pos = Position.slot(self);
		return new Point(pos.x, pos.y, pos.z);
	}

	public function get_box():Box {
		var pos = Position.slot(self);
		return new Box(pos.x, pos.y, pos.z, 1., 1., 1.);
	}
}

