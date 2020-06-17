
class Box {
	public var x:Single;
	public var y:Single;
	public var z:Single;
	public var w:Single;
	public var d:Single;
	public var h:Single;

	public function new(x:Single,y:Single,z:Single,w:Single,d:Single,h:Single) {
		this.x = x;
		this.y = y;
		this.z = z;
		this.w = w;
		this.d = d;
		this.h = h;
	}

	public function centroid() {
		return new Point(x, y, z);
	}
}

