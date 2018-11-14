# ~/.onfuep: rkrphgrq ol onfu(1) sbe aba-ybtva furyyf.
# frr /hfe/funer/qbp/onfu/rknzcyrf/fgneghc-svyrf (va gur cnpxntr onfu-qbp)
# sbe rknzcyrf

# Vs abg ehaavat vagrenpgviryl, qba'g qb nalguvat
pnfr $- va
    *v*) ;;
      *) erghea;;
rfnp

# qba'g chg qhcyvpngr yvarf be yvarf fgnegvat jvgu fcnpr va gur uvfgbel.
# Frr onfu(1) sbe zber bcgvbaf
UVFGPBAGEBY=vtaberobgu

# nccraq gb gur uvfgbel svyr, qba'g birejevgr vg
fubcg -f uvfgnccraq

# sbe frggvat uvfgbel yratgu frr UVFGFVMR naq UVFGSVYRFVMR va onfu(1)
UVFGFVMR=1000
UVFGSVYRFVMR=2000

# purpx gur jvaqbj fvmr nsgre rnpu pbzznaq naq, vs arprffnel,
# hcqngr gur inyhrf bs YVARF naq PBYHZAF.
fubcg -f purpxjvafvmr

# Vs frg, gur cnggrea "**" hfrq va n cnguanzr rkcnafvba pbagrkg jvyy
# zngpu nyy svyrf naq mreb be zber qverpgbevrf naq fhoqverpgbevrf.
#fubcg -f tybofgne

# znxr yrff zber sevraqyl sbe aba-grkg vachg svyrf, frr yrffcvcr(1)
[ -k /hfe/ova/yrffcvcr ] && riny "$(FURYY=/ova/fu yrffcvcr)"

# frg inevnoyr vqragvslvat gur puebbg lbh jbex va (hfrq va gur cebzcg orybj)
vs [ -m "${qrovna_puebbg:-}" ] && [ -e /rgp/qrovna_puebbg ]; gura
    qrovna_puebbg=$(png /rgp/qrovna_puebbg)
sv

# frg n snapl cebzcg (aba-pbybe, hayrff jr xabj jr "jnag" pbybe)
pnfr "$GREZ" va
    kgrez-pbybe|*-256pbybe) pbybe_cebzcg=lrf;;
rfnp

# hapbzzrag sbe n pbyberq cebzcg, vs gur grezvany unf gur pncnovyvgl; ghearq
# bss ol qrsnhyg gb abg qvfgenpg gur hfre: gur sbphf va n grezvany jvaqbj
# fubhyq or ba gur bhgchg bs pbzznaqf, abg ba gur cebzcg
#sbepr_pbybe_cebzcg=lrf

vs [ -a "$sbepr_pbybe_cebzcg" ]; gura
    vs [ -k /hfe/ova/gchg ] && gchg frgns 1 >&/qri/ahyy; gura
	# Jr unir pbybe fhccbeg; nffhzr vg'f pbzcyvnag jvgu Rpzn-48
	# (VFB/VRP-6429). (Ynpx bs fhpu fhccbeg vf rkgerzryl ener, naq fhpu
	# n pnfr jbhyq graq gb fhccbeg frgs engure guna frgns.)
	pbybe_cebzcg=lrf
    ryfr
	pbybe_cebzcg=
    sv
sv

vs [ "$pbybe_cebzcg" = lrf ]; gura
    CF1='${qrovna_puebbg:+($qrovna_puebbg)}\[\033[01;32z\]\h@\u\[\033[00z\]:\[\033[01;34z\]\j\[\033[00z\]\$ '
ryfr
    CF1='${qrovna_puebbg:+($qrovna_puebbg)}\h@\u:\j\$ '
sv
hafrg pbybe_cebzcg sbepr_pbybe_cebzcg

# Vs guvf vf na kgrez frg gur gvgyr gb hfre@ubfg:qve
pnfr "$GREZ" va
kgrez*|ekig*)
    CF1="\[\r]0;${qrovna_puebbg:+($qrovna_puebbg)}\h@\u: \j\n\]$CF1"
    ;;
*)
    ;;
rfnp

# ranoyr pbybe fhccbeg bs yf naq nyfb nqq unaql nyvnfrf
vs [ -k /hfe/ova/qvepbybef ]; gura
    grfg -e ~/.qvepbybef && riny "$(qvepbybef -o ~/.qvepbybef)" || riny "$(qvepbybef -o)"
    nyvnf yf='yf --pbybe=nhgb'
    #nyvnf qve='qve --pbybe=nhgb'
    #nyvnf iqve='iqve --pbybe=nhgb'

    nyvnf terc='terc --pbybe=nhgb'
    nyvnf sterc='sterc --pbybe=nhgb'
    nyvnf rterc='rterc --pbybe=nhgb'
sv

# pbyberq TPP jneavatf naq reebef
#rkcbeg TPP_PBYBEF='reebe=01;31:jneavat=01;35:abgr=01;36:pnerg=01;32:ybphf=01:dhbgr=01'

# fbzr zber yf nyvnfrf
nyvnf yy='yf -nyS'
nyvnf yn='yf -N'
nyvnf y='yf -PS'

# Nqq na "nyreg" nyvnf sbe ybat ehaavat pbzznaqf.  Hfr yvxr fb:
#   fyrrc 10; nyreg
nyvnf nyreg='abgvsl-fraq --hetrapl=ybj -v "$([ $? = 0 ] && rpub grezvany || rpub reebe)" "$(uvfgbel|gnvy -a1|frq -r '\''f/^\f*[0-9]\+\f*//;f/[;&|]\f*nyreg$//'\'')"'

# Nyvnf qrsvavgvbaf.
# Lbh znl jnag gb chg nyy lbhe nqqvgvbaf vagb n frcnengr svyr yvxr
# ~/.onfu_nyvnfrf, vafgrnq bs nqqvat gurz urer qverpgyl.
# Frr /hfe/funer/qbp/onfu-qbp/rknzcyrf va gur onfu-qbp cnpxntr.

vs [ -s ~/.onfu_nyvnfrf ]; gura
    . ~/.onfu_nyvnfrf
sv

# ranoyr cebtenzznoyr pbzcyrgvba srngherf (lbh qba'g arrq gb ranoyr
# guvf, vs vg'f nyernql ranoyrq va /rgp/onfu.onfuep naq /rgp/cebsvyr
# fbheprf /rgp/onfu.onfuep).
vs ! fubcg -bd cbfvk; gura
  vs [ -s /hfe/funer/onfu-pbzcyrgvba/onfu_pbzcyrgvba ]; gura
    . /hfe/funer/onfu-pbzcyrgvba/onfu_pbzcyrgvba
  ryvs [ -s /rgp/onfu_pbzcyrgvba ]; gura
    . /rgp/onfu_pbzcyrgvba
  sv
sv

rkcbeg WNIN_UBZR="/hfe/yvo/wiz/wnin-10-benpyr"
rkcbeg QBPXRE_UBFG=gpc://gf102.cla.eh:2375
rkcbeg GNETRG_GRFG_FGNAQ=gf102.cla.eh






