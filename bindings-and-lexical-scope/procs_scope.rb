foo = 1
proc = Proc.new { foo }
foo = 2
p proc.call