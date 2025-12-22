####################################################
# Students' Makefile for the CS:APP Architecture Lab
####################################################

# Use this rule to build the handin file for the whole lab.
handin: clean
	mkdir -p archlab-handin
#part A
	cp archlab-project/misc/sum.ys archlab-handin/sum.ys
	cp archlab-project/misc/rsum.ys archlab-handin/rsum.ys
	cp archlab-project/misc/bubble.ys archlab-handin/bubble.ys
#part B
	cp archlab-project/sim/src/architectures/extra/pipe_s3a.rs archlab-handin/pipe_s3a.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s3b.rs archlab-handin/pipe_s3b.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s3c.rs archlab-handin/pipe_s3c.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s3d.rs archlab-handin/pipe_s3d.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s4a.rs archlab-handin/pipe_s4a.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s4b.rs archlab-handin/pipe_s4b.rs
	cp archlab-project/sim/src/architectures/extra/pipe_s4c.rs archlab-handin/pipe_s4c.rs
	cp archlab-project/sim/src/architectures/extra/seq_full.rs archlab-handin/seq_full.rs
#part Carchlab-
	cp archlab-project/misc/ncopy.ys archlab-handin/ncopy.ys
	cp archlab-project/sim/src/architectures/extra/ncopy.rs archlab-handin/ncopy.rs
# seq-full.hcl ncopy.ys pipe-full.hcl
	tar cf archlab-handin.tar archlab-handin
	rm -rf archlab-handin

clean:
	rm -f archlab-handin.tar
	rm -rf handin
.PHONY: handin