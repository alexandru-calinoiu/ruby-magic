foo = 1
proc = Proc.new { foo = 2 }.call
p foo