// ROBUSTNESS egr: robust: ra.
max_value 2;
global x,y;
track x: 0;

fn f1{
	local a;
	BCAS(x,a,a+1);
}
