
class Point {
	public var x:Single;
	public var y:Single;
	public var z:Single;

	public inline function new(x:Single, y:Single, z:Single) {
		this.x = x;
		this.y = y;
		this.z = z;
	}

	public inline function add(x:Single, y:Single, z:Single) {
		this.x += x;
		this.y += y;
		this.z += z;
	}

	public inline function sub(x:Single, y:Single, z:Single) {
		this.x -= x;
		this.y -= y;
		this.z -= z;
	}

	public inline function mul(x:Single, y:Single, z:Single) {
		this.x *= x;
		this.y *= y;
		this.z *= z;
	}

	public inline function div(x:Single, y:Single, z:Single) {
		this.x /= x;
		this.y /= y;
		this.z /= z;
	}
}
