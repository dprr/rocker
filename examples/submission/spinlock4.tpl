// ROBUST
// spin_depth 6
//  Linux Spinlock from the paper (Fig 2):
// 
//  S. Owens. Reasoning about the implementation of concurrency ab-
//  stractions on x86-TSO. In ECOOP, volume 6183 of LNCS, pages
//  478–503. Springer, 2010.
//
max_value 10;
global x = 0, k;

fn t0{
	local t, i, notlocked;
	i = 0;
	notlocked = 0;
	while (true) {
	 	t = FADD(x, 1);
	 	if (t == notlocked) {
	 		// CS
	 		k.store(i);
	 		t = k.load();
	 		assert(t == i);

	 		// Release
	 		x.store(notlocked);
	 	} else {
	 		wait(x, notlocked);
	 	}
	}
}

fn t1{
	local t, i, notlocked;
	i = 1;
	notlocked = 0;
	while (true) {
	 	t = FADD(x, 1);
	 	if (t == notlocked) {
	 		// CS
	 		k.store(i);
	 		t = k.load();
	 		assert(t == i);

	 		// Release
	 		x.store(notlocked);
	 	} else {
			wait(x, notlocked);
	 	}
	}
}

fn t2{
	local t, i, notlocked;
	i = 2;
	notlocked = 0;
	while (true) {
	 	t = FADD(x, 1);
	 	if (t == notlocked) {
	 		// CS
	 		k.store(i);
	 		t = k.load();
	 		assert(t == i);

	 		// Release
	 		x.store(notlocked);
	 	} else {
			wait(x, notlocked);
	 	}
	}
}

fn t3{
	local t, i, notlocked;
	i = 3;
	notlocked = 0;
	while (true) {
	 	t = FADD(x, 1);
	 	if (t == notlocked) {
	 		// CS
	 		k.store(i);
	 		t = k.load();
	 		assert(t == i);

	 		// Release
	 		x.store(notlocked);
	 	} else {
			wait(x, notlocked);
	 	}
	}
}
