#!/bin/csh -f
make -f Makefile.cpl

rm -f /d1/weiyu/scratch/clm4_ndhms/run/ccsm.exe
cd /raid/weiyu/scratch/clm4_ndhms/ccsm/obj

mpif90 -o /d1/weiyu/scratch/clm4_ndhms/run/ccsm.exe ccsm_comp_mod.o ccsm_driver.o map_atmatm_mct.o map_atmice_mct.o map_atmlnd_mct.o map_atmocn_mct.o map_glcglc_mct.o map_iceice_mct.o map_iceocn_mct.o map_lndlnd_mct.o map_ocnocn_mct.o map_rofocn_mct.o map_rofrof_mct.o map_snoglc_mct.o map_snosno_mct.o mrg_x2a_mct.o mrg_x2g_mct.o mrg_x2i_mct.o mrg_x2l_mct.o mrg_x2o_mct.o mrg_x2s_mct.o seq_avdata_mod.o seq_diag_mct.o seq_domain_mct.o seq_flux_mct.o seq_frac_mct.o seq_hist_mod.o seq_rearr_mod.o seq_rest_mod.o -L/d1/weiyu/scratch/clm4_ndhms/lib -latm -llnd -lice -locn -lglc -L/d1/weiyu/scratch/clm4_ndhms/lib -lcsm_share -lmct -lmpeu -lpio  -L/home/weiyu/netcdf/lib -lnetcdf -lnetcdff -L /d1/weiyu/LISv6.1/src/routing/NCAR_router/lib -lland -lNDHMS