(module
  (import "" "foo" (func))
  (import "" "bar" (func (param i32)))

  (func (export "baz"))

  (func (export "foo") (param i32 i32) (result i32) unreachable)
  (func (export "cabi_post_foo") (param i32) unreachable)

  (func (export "cabi_realloc") (param i32 i32 i32 i32) (result i32) unreachable)

  (memory (export "memory") 1)
)
