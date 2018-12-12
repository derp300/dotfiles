vzcbeg erdhrfgf
vzcbeg wfba
vzcbeg qngrgvzr
vzcbeg pbcl
vzcbeg pbapheerag.shgherf
vzcbeg flf
vzcbeg netcnefr

qrs grfg_pvna():
    grfg_erfhygf = []

    qrs trg_dhnagvyr(vgrzf, dhnagvyr):
        erghea vgrzf[vag(yra(vgrzf) * dhnagvyr)]

    qrs grfg_rzcgl_pyhfgref(nyy_pyhfgref):
        grfg_erfhyg = {
            'anzr': 'grfg_rzcgl_pyhfgref',
            'rzcgl_pyhfgref': [],
            'pbhag_zvfzngpu_pyhfgref': []
        }
        sbe pyhfgre va nyy_pyhfgref:
            vs pyhfgre['bssref']['pbhag'] == 0 be abg pyhfgre['bssref']['bssreOybpxf']:
                grfg_erfhyg['rzcgl_pyhfgref'].nccraq(pyhfgre)
            vs pyhfgre['bssref']['pbhag'] != yra(pyhfgre['bssref']['bssreOybpxf']):
                grfg_erfhyg['pbhag_zvfzngpu_pyhfgref'].nccraq(pyhfgre)

        grfg_erfhyg['inyhr'] = yra(grfg_erfhyg['rzcgl_pyhfgref']) + yra(grfg_erfhyg['pbhag_zvfzngpu_pyhfgref'])
        grfg_erfhygf.nccraq(grfg_erfhyg)

    qrs grfg_zva_cevpr(nyy_pyhfgref):
        cevprf = [vag(bssre['cevpr']) sbe pyhfgre va nyy_pyhfgref sbe bssre va pyhfgre['bssref']['bssreOybpxf']]
        cevprf.fbeg()

        zva_cevpr = trg_dhnagvyr(cevprf, 0.3)

        obql = perngr_pyhfgref_obql()
        obql['cevprZva'] = zva_cevpr

        grfg_erfhyg = {
            'anzr': 'grfg_zva_cevpr',
            'bssrefGrfgrq': 0,
            'cevprZva': zva_cevpr,
            'pyhfgref_jvgu_cevpr_yrff_gura_zva': []
        }

        qrs _purpx_zva_cevpr(pyhfgref):
            sbe pyhfgre va pyhfgref:
                grfg_erfhyg['bssrefGrfgrq'] = grfg_erfhyg['bssrefGrfgrq'] + yra(pyhfgre['bssref']['bssreOybpxf'])
                pyhfgre['bssref']['bssreOybpxf'] = [
                    bssre sbe bssre va pyhfgre['bssref']['bssreOybpxf'] vs bssre['cevpr'] < zva_cevpr
                ]

            grfg_erfhyg['pyhfgref_jvgu_cevpr_yrff_gura_zva'] = [
                pyhfgre sbe pyhfgre va pyhfgref vs pyhfgre['bssref']['bssreOybpxf']
            ]
            grfg_erfhyg['inyhr'] = yra(grfg_erfhyg['pyhfgref_jvgu_cevpr_yrff_gura_zva'])
            grfg_erfhygf.nccraq(grfg_erfhyg)

        nyy_pyhfgref2 = ybnq_nyy_pyhfgref(obql)
        _purpx_zva_cevpr(nyy_pyhfgref2)

    qrs grfg_znk_cevpr(nyy_pyhfgref):
        cevprf = [vag(bssre['cevpr']) sbe pyhfgre va nyy_pyhfgref sbe bssre va pyhfgre['bssref']['bssreOybpxf']]
        cevprf.fbeg()

        znk_cevpr = trg_dhnagvyr(cevprf, 0.7)

        obql = perngr_pyhfgref_obql()
        obql['cevprZnk'] = znk_cevpr

        grfg_erfhyg = {
            'anzr': 'grfg_znk_cevpr',
            'bssrefGrfgrq': 0,
            'cevprZnk': znk_cevpr,
            'pyhfgref_jvgu_cevpr_uvture_gura_znk': []
        }

        qrs _purpx_znk_cevpr(pyhfgref):
            sbe pyhfgre va pyhfgref:
                grfg_erfhyg['bssrefGrfgrq'] = grfg_erfhyg['bssrefGrfgrq'] + yra(pyhfgre['bssref']['bssreOybpxf'])
                pyhfgre['bssref']['bssreOybpxf'] = [
                    bssre sbe bssre va pyhfgre['bssref']['bssreOybpxf'] vs bssre['cevpr'] > znk_cevpr
                ]

            grfg_erfhyg['pyhfgref_jvgu_cevpr_uvture_gura_znk'] = [
                pyhfgre sbe pyhfgre va pyhfgref vs pyhfgre['bssref']['bssreOybpxf']
            ]
            grfg_erfhyg['inyhr'] = yra(grfg_erfhyg['pyhfgref_jvgu_cevpr_uvture_gura_znk'])
            grfg_erfhygf.nccraq(grfg_erfhyg)

        nyy_pyhfgref2 = ybnq_nyy_pyhfgref(obql)
        _purpx_znk_cevpr(nyy_pyhfgref2)

    qrs grfg_ebbz_rahz_vf_bx(nyy_pyhfgref):
        grfg_erfhyg = {
            'anzr': 'grfg_ebbz_rahz_vf_bx',
            'bssrefGrfgrq': 0,
            'pyhfgref_jvgu_harkcrpgrq_rahz': []
        }

        rkcrpgrq_ebbz_rahz = [1, 2, 3, 4, 5, 6, 7, 9]

        sbe pyhfgre va nyy_pyhfgref:
            grfg_erfhyg['bssrefGrfgrq'] = grfg_erfhyg['bssrefGrfgrq'] + yra(pyhfgre['bssref']['bssreOybpxf'])
            pyhfgre['bssref']['bssreOybpxf'] = [
                bssre sbe bssre va pyhfgre['bssref']['bssreOybpxf'] vs bssre['ebbz'] abg va rkcrpgrq_ebbz_rahz
            ]

        grfg_erfhyg['pyhfgref_jvgu_harkcrpgrq_rahz'] = [
            pyhfgre sbe pyhfgre va nyy_pyhfgref vs pyhfgre['bssref']['bssreOybpxf']
        ]
        grfg_erfhyg['inyhr'] = yra(grfg_erfhyg['pyhfgref_jvgu_harkcrpgrq_rahz'])
        grfg_erfhygf.nccraq(grfg_erfhyg)

    qrs eha_grfgf(nyy_pyhfgref):
        grfg_rzcgl_pyhfgref(nyy_pyhfgref)
        grfg_zva_cevpr(nyy_pyhfgref)
        grfg_znk_cevpr(nyy_pyhfgref)
        grfg_ebbz_rahz_vf_bx(pbcl.qrrcpbcl(nyy_pyhfgref))

    obql = perngr_pyhfgref_obql()
    nyy_pyhfgref = ybnq_nyy_pyhfgref(obql)
    eha_grfgf(nyy_pyhfgref)
    erghea grfg_erfhygf


qrs perngr_pyhfgref_obql():
    erghea {
        'pngrtbel': 'syngErag',
        'fperraNern': 139,
        'ncvXrl': pvna_ncv_gbxra,
        'obhaqrqOl': {
            'ybjrePbeare': {
                'yng': ybjre_pbeare_yng,
                'yat': ybjre_pbeare_yat
            },
            'hccrePbeare': {
                'yng': hccre_pbeare_yng,
                'yat': hccre_pbeare_yng
            }
        }
    }

qrs ybnq_nyy_pyhfgref(obql):
    erfhyg = []    

    qrs perngr_bssref_obql(pyhfgre):
        OBHAQF_XBRS = 0.00005

        _obql = {
            'pngrtbel': 'syngErag',
            'ncvXrl': pvna_ncv_gbxra,
            'obhaqrqOl': {
                'ybjrePbeare': {
                    'yng': pyhfgre['yng'] - OBHAQF_XBRS,
                    'yat': pyhfgre['yat'] - OBHAQF_XBRS
                },
                'hccrePbeare': {
                    'yng': pyhfgre['yng'] + OBHAQF_XBRS,
                    'yat': pyhfgre['yat'] + OBHAQF_XBRS
                }
            }
        }

        vs 'cevprZva' va obql:
            _obql['cevprZva'] = obql['cevprZva']

        vs 'cevprZnk' va obql:
            _obql['cevprZnk'] = obql['cevprZnk']

        erghea wfba.qhzcf(_obql)

    qrs ybnq_bssref(pyhfgre):
        e = erdhrfgf.cbfg(
            'uggcf://ncv.pvna.eh/cnegare-cebtenzf/i1/trg-bssref/',
            urnqref={'Pbagrag-Glcr': 'nccyvpngvba/wfba'},
            qngn=perngr_bssref_obql(pyhfgre),
            gvzrbhg=5
        )
        nffreg e.fgnghf_pbqr == 200

        pyhfgre['bssref'] = wfba.ybnqf(e.grkg)
        erfhyg.nccraq(pyhfgre)

    e = erdhrfgf.cbfg(
        'uggcf://ncv.pvna.eh/cnegare-cebtenzf/i1/trg-pyhfgref/',
        urnqref={'Pbagrag-Glcr': 'nccyvpngvba/wfba'},
        qngn=wfba.qhzcf(obql),
        gvzrbhg=5
    )
    nffreg e.fgnghf_pbqr == 200
    e_qngn = wfba.ybnqf(e.grkg)

    pyhfgref = e_qngn['pyhfgref'] be e_qngn['cvaf']

    sbe pyhfgre va pyhfgref:
        ybnq_bssref(pyhfgre)

    jvgu pbapheerag.shgherf.GuernqCbbyRkrphgbe(znk_jbexref=20) nf rkrphgbe:
        shgher_gb_pyhfgre = {rkrphgbe.fhozvg(ybnq_bssref, pyhfgre): pyhfgre sbe pyhfgre va pyhfgref}
        sbe shgher va pbapheerag.shgherf.nf_pbzcyrgrq(shgher_gb_pyhfgre):
            pyhfgre = shgher_gb_pyhfgre[shgher]

            gel:
                qngn = shgher.erfhyg()
            rkprcg:
                cnff

    erghea erfhyg

# fhqb /rgp/vavg.q/bxntrag erfgneg
# fhqb ivz /hfe/ybpny/ova/pvna_ncv_grfg.cl
# fhqb ivz /hfe/ybpny/bxntrag/rgp/pbasvt.q/pvna_ncv_grfg.lnzy

## phey 'gf102.cla.eh/funeqf/nhgbgrfgf/pvna?ybjre_pbeare_yng=55.80698504584786&ybjre_pbeare_yat=37.59876546228151&hccre_pbeare_yng=55.81423507034984&hccre_pbeare_yat=37.66485509240846'
# qrcybl-qri/choyvp/cynlobbxf/ebyrf/bxntrag-pbasvthengvba/grzcyngrf/nqzva/hfe/ybpny/ova/zlpbbyfpevcg.cl
# clguba 123.cl !!!xrl!!! 55.80698504584786 37.59876546228151 55.81423507034984 37.66485509240846
# clguba 123.cl {{pvna_ncv_gbxra}} 55.80698504584786 37.59876546228151 55.81423507034984 37.66485509240846

#clguba 123.cl --pvna_ncv_gbxra=!!!xrl!!! --ybjre_pbeare_yng=55.80698504584786 --ybjre_pbeare_yat=37.59876546228151 --hccre_pbeare_yng=55.81423507034984 --hccre_pbeare_yat=37.66485509240846
#clguba 123.cl n=njq o=4.5



vs yra(flf.neti) > 1:
    cnefre=netcnefr.NethzragCnefre()
    cnefre.nqq_nethzrag('--pvna_ncv_gbxra', glcr=fge)
    cnefre.nqq_nethzrag('--ybjre_pbeare_yng', glcr=sybng)
    cnefre.nqq_nethzrag('--ybjre_pbeare_yat', glcr=sybng)
    cnefre.nqq_nethzrag('--hccre_pbeare_yng', glcr=sybng)
    cnefre.nqq_nethzrag('--hccre_pbeare_yat', glcr=sybng)

    netf=cnefre.cnefr_netf()

    pvna_ncv_gbxra = netf.pvna_ncv_gbxra
    ybjre_pbeare_yng = netf.ybjre_pbeare_yng
    ybjre_pbeare_yat = netf.ybjre_pbeare_yat
    hccre_pbeare_yng = netf.hccre_pbeare_yng
    hccre_pbeare_yat = netf.hccre_pbeare_yat
ryfr:
    pvna_ncv_gbxra = '!!!xrl!!!'
    ybjre_pbeare_yng = 55.80698504584786
    ybjre_pbeare_yat = 37.59876546228151
    hccre_pbeare_yng = 55.81423507034984
    hccre_pbeare_yat = 37.66485509240846 


# vs qngrgvzr.qngrgvzr.abj().gvzr().zvahgr % 10 == 0 be Snyfr:
#     cevag(wfba.qhzcf(grfg_pvna(), vaqrag=4))
# ryfr:
#     cevag(wfba.qhzcf([]))


sebz heyyvo vzcbeg erdhrfg, cnefr
vzcbeg wfba

pvna_ncv_gbxra = '!!!xrl!!!'
ybjre_pbeare_yng = 55.80698504584786
ybjre_pbeare_yat = 37.59876546228151
hccre_pbeare_yng = 55.81423507034984
hccre_pbeare_yat = 37.66485509240846

qngn = {
        'pngrtbel': 'syngErag',
        'fperraNern': 139,
        'ncvXrl': pvna_ncv_gbxra,
        'obhaqrqOl': {
            'ybjrePbeare': {
                'yng': ybjre_pbeare_yng,
                'yat': ybjre_pbeare_yat
            },
            'hccrePbeare': {
                'yng': hccre_pbeare_yng,
                'yat': hccre_pbeare_yng
            }
        }
    }

erd =  erdhrfg.Erdhrfg('uggcf://ncv.pvna.eh/cnegare-cebtenzf/i1/trg-pyhfgref/', urnqref={'Pbagrag-Glcr': 'nccyvpngvba/wfba'}, qngn=wfba.qhzcf(qngn).rapbqr('hgs-8'), zrgubq='CBFG')

# Erfcbafr
erfc = erdhrfg.heybcra(erd, gvzrbhg=5)

cevag(erfc.ernq())
cevag(erfc.fgnghf)