(module
	(type $0 (func (param i32 i32) (result i32)))
	(func $0 (type 0) (
		i32.add (get_local 0) (get_local 1)))
	(func $fact (param $n f64) (result f64)
		(if (f64.lt (get_local $n) (f64.const 2))
			(then (return (get_local $n)))
			(else (return 
				(f64.mul
					(get_local $n)
					(call $fact (f64.sub (get_local $n) (f64.const 1)))))))
		unreachable)
	(func $debug (result f64)
		(call $fact (f64.const 10)))
	(export "debug" ( func $debug ))
)