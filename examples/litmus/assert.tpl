// ROBUST
global x;

fn t1{
	local a;
	a = x.load();
	assert(a == 0);
}
