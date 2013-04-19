SMT_PROJECT = ProjectA
SMT_INIT_OPTS =
SMT_LABEL = mylabel-$$(date +%F-%H%M%S)
# SMT_LABEL = mylabel/$$(date +%F-%H%M%S)
# slashes in label does not work.
# See also: http://neuralensemble.org/trac/sumatra/ticket/168
SMT_RUN_OPTS =

smt-run: smt-init
	smt run --label $(SMT_LABEL) --main script.py default.param \
		$(SMT_RUN_OPTS)

smt-init: .smt/records
.smt/records:
	smt init $(SMT_INIT_OPTS) --addlabel=parameters $(SMT_PROJECT)

clean:
	rm -rf .smt
