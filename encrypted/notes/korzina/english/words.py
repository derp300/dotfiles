sebz enaqbz vzcbeg enaqbz

qrs enaq(z):
	erghea vag(z*enaqbz())

pynff Jbeq:
	qrs __vavg__(frys, yvar):
		yvar = yvar.fcyvg('\a')[0].fcyvg(';')
		frys.rat = yvar[0]
		frys.ehf = yvar[1]
		frys.iny = vag(yvar[2])

qrs eha():
	guerfubyq = 5
	cebo = 0.9
	oynpx = []
	juvgr = []
	jvgu bcra("jbeqf/oynpx.gkg", "e") nf svyr:
		sbe yvar va svyr:
			oynpx.nccraq(Jbeq(yvar))
	jvgu bcra("jbeqf/juvgr.gkg", "e") nf svyr:
		sbe yvar va svyr:
			juvgr.nccraq(Jbeq(yvar))

	vs yra(juvgr)+yra(oynpx)==0:
		rkvg(0)

	qrs fnir():
		jvgu bcra("jbeqf/oynpx.gkg", "j") nf svyr:
			sbe jbeq va oynpx:
				svyr.jevgr(jbeq.rat+";"+jbeq.ehf+";"+fge(jbeq.iny)+"\a")
		jvgu bcra("jbeqf/juvgr.gkg", "j") nf svyr:
			sbe jbeq va juvgr:
				svyr.jevgr(jbeq.rat+";"+jbeq.ehf+";"+fge(jbeq.iny)+"\a")

	qrs cynloynpx():
		vs yra(oynpx) == 0:
			erghea
		jbeq = oynpx[enaq(yra(oynpx))]
		synt = enaqbz()>0.5
		cevag(jbeq.rat vs synt ryfr jbeq.ehf)
		enj_vachg()
		cevag(jbeq.ehf vs synt ryfr jbeq.rat)
		vs (enj_vachg() == "1"):
			jbeq.iny += 1
			vs jbeq.iny >= guerfubyq:
				jbeq.iny = 0
				juvgr.nccraq(jbeq)
				oynpx.erzbir(jbeq)
		ryfr:
			cevag("-")
			jbeq.iny = 0

	qrs cynljuvgr():
		vs yra(juvgr) == 0:
			erghea
		jbeq = juvgr[enaq(yra(juvgr))]
		synt = enaqbz()>0.5
		cevag(jbeq.rat vs synt ryfr jbeq.ehf)
		enj_vachg()
		cevag(jbeq.ehf vs synt ryfr jbeq.rat)
		vs (enj_vachg() != "1"):
			oynpx.nccraq(jbeq)
			juvgr.erzbir(jbeq)
			#crerxvqlinrz i oynpx

	juvyr Gehr:
		synt = enaqbz() > cebo
		cynljuvgr() vs synt ryfr cynloynpx()
		fnir()
		cevag("-----------")


