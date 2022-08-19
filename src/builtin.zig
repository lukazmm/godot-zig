const native = @import("native.zig");

const Float = f64;
const Int = i64;
const Bool = bool;

pub const AABB = extern struct {
    position: Vector3,
    size: Vector3,
};

pub const Rect2 = extern struct {
    position: Vector2,
    size: Vector2,
};

pub const Rect2i = extern struct {
    position: Vector2i,
    size: Vector2i,
};

pub const Vector2 = extern struct {
    x: Float,
    y: Float,
};

pub const Vector2i = extern struct {
    x: Int,
    y: Int,
};

pub const Vector3 = extern struct { x: Float, y: Float, z: Float, };

pub const Vector3i = extern struct {
    x: Int,
    y: Int,
    z: Int,
};

pub const Vector4 = extern struct {
    x: Float,
    y: Float,
    z: Float,
    w: Float,
};

pub const Vector4i = extern struct {
    x: Int,
    y: Int,
    z: Int,
    w: Float,
};

pub const Transform2D = extern struct { elements: [3]Vector2, };

pub const Transform3D = extern struct {
    basis: Basis,
    origin: Vector3,
};

pub const Basis = extern struct { 
    elements: [3]Vector3, 
};

pub const Projection = extern struct {
    matrix: [4]Vector4,
};

pub const Plane = extern struct {
    normal: Vector3,
    d: Float,
};

pub const Quaternion = extern struct {
    x: Float = 0.0,
    y: Float = 0.0,
    z: Float = 0.0,
    w: Float = 1.0,
};

pub const Color = extern struct {
    r: Float,
    g: Float,
    b: Float,
    a: Float = 1.0,
};