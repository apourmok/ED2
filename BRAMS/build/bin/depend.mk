adap_init.o : $(INIT)/adap_init.f90 mem_leaf.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

altera_dia.o : $(SOIL_MOISTURE)/altera_dia.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

aobj.o : $(ISAN)/aobj.f90 isan_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

asgen.o : $(ISAN)/asgen.f90 isan_coms.o io_params.o mem_grid.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

asnc.o : $(ISAN)/asnc.F90 isan_coms.o rconstants.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -DUSENC=$(USENC) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

asti.o : $(ISAN)/asti.f90 isan_coms.o mem_grid.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

asti2.o : $(ISAN)/asti2.f90 isan_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

astp.o : $(ISAN)/astp.f90 isan_coms.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

avarf.o : $(ISAN)/avarf.f90 isan_coms.o mem_grid.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

catt_start.o : $(CATT)/catt_start.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

cond_read.o : $(FDDA)/cond_read.f90  mem_grid.o mem_varinit.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

cond_update.o : $(FDDA)/cond_update.f90  an_header.o grid_struct.o \
	mem_basic.o mem_grid.o mem_varinit.o rconstants.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

conv_coms.o : $(CUPARM)/conv_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

coriolis.o : $(CORE)/coriolis.f90  mem_basic.o mem_grid.o \
	mem_scratch.o mem_tend.o rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

cu_read.o : $(CUPARM)/cu_read.f90  mem_basic.o mem_cuparm.o mem_grid.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

cyclic_mod.o : $(BC)/cyclic_mod.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

dateutils.o  : $(UTILS_LIB)/dateutils.f90 
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

dealloc.o : $(MEMORY)/dealloc.f90 mem_all.o mem_opt_scratch.o \
	catt_start.o mem_aerad.o mem_globaer.o mem_globrad.o \
	teb_spm_start.o mem_mass.o mem_teb.o mem_teb_common.o mem_gaspart.o \
	mem_scratch_grell.o mem_ensemble.o shcu_vars_const.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

diffsclr.o : $(TURB)/diffsclr.f90  mem_grid.o mem_scratch.o mem_turb.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

diffuse.o : $(TURB)/diffuse.f90  ke_coms.o mem_basic.o mem_grid.o \
	mem_leaf.o mem_mass.o mem_micro.o mem_opt_scratch.o mem_scratch.o \
	mem_tend.o mem_turb.o micphys.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

domain_decomp.o : $(INIT)/domain_decomp.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

dry_dep.o : $(CATT)/dry_dep.f90 mem_grid.o mem_basic.o mem_turb.o \
	mem_micro.o mem_scratch.o mem_leaf.o extra.o rconstants.o mem_scalar.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)
	  
dted.o       : $(UTILS_LIB)/dted.c 
	  $(C_COMMAND) $<
	  
eenviron.o   : $(EFF)/eenviron.c
	  $(C_COMMAND) $<

emission_source_map.o : $(CATT)/emission_source_map.f90 mem_basic.o \
	mem_grid.o mem_scalar.o extra.o mem_scratch.o error_mess.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)
	 
error_mess.o : $(IO)/error_mess.f90 node_mod.o
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

extra.o : $(CATT)/extra.f90 var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

file_inv.o : $(ISAN)/file_inv.f90 isan_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 
	 
filelist.o   : $(UTILS_LIB)/filelist.F90 
	  cp -f $< $(<F:.F90=.F90)
	  $(F_COMMAND) -D$(CMACH) $(<F:.F90=.F90)
	  rm -f $(<F:.F90=.F90)

first_rams.o : $(ISAN)/first_rams.f90 an_header.o isan_coms.o \
	mem_grid.o mem_scratch.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

gaspart.o : $(TEB_SPM)/gaspart.f90 mem_grid.o mem_leaf.o mem_basic.o \
	mem_gaspart.o rconstants.o mem_emiss.o mem_teb_vars_const.o \
	mem_tend.o grid_dims.o var_tables.o io_params.o ref_sounding.o \
	an_header.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

geodat.o : $(MKSFC)/geodat.f90 teb_spm_start.o io_params.o mem_grid.o \
	mem_leaf.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

getvar.o     : $(UTILS_LIB)/getvar.f90  an_header.o
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

grell_coms.o : $(CUPARM)/grell_coms.f90 grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_aux.o : $(CUPARM)/grell_cupar_aux.f90 mem_scratch_grell.o \
	rconstants.o grell_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_downdraft.o : $(CUPARM)/grell_cupar_downdraft.f90 rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_driver.o : $(CUPARM)/grell_cupar_driver.f90  catt_start.o extra.o \
	grell_coms.o  io_params.o mem_basic.o mem_cuparm.o mem_ensemble.o mem_grid.o \
	mem_mass.o mem_micro.o mem_scalar.o mem_scratch.o mem_scratch_grell.o mem_tend.o \
	mem_turb.o node_mod.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_ensemble.o : $(CUPARM)/grell_cupar_ensemble.f90 grell_coms.o \
	rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_environment.o : $(CUPARM)/grell_cupar_environment.f90 grell_coms.o \
	rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_main.o : $(CUPARM)/grell_cupar_main.f90 mem_scratch_grell.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_cupar_updraft.o : $(CUPARM)/grell_cupar_updraft.f90 rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grell_extras_catt.o : $(CUPARM)/grell_extras_catt.f90 \
	mem_tconv.o mem_scalar.o node_mod.o mem_grid.o mem_scratch.o \
	mem_basic.o grell_coms.o mem_scratch_grell.o \
	rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

grid_dims.o : $(MEMORY)/grid_dims.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grid_struct.o : $(MEMORY)/grid_struct.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

gridset.o : $(INIT)/gridset.f90 mem_grid.o grid_dims.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

harr_radinit.o : $(RADIATE)/harr_radinit.f90 mem_harr.o mem_radiate.o micphys.o mem_grid.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

harr_raddriv.o : $(RADIATE)/harr_raddriv.f90 mem_grid.o mem_harr.o mem_leaf.o \
	micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

harr_rad.o : $(RADIATE)/harr_rad.f90 mem_harr.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

hemi2.o : $(NESTING)/hemi2.f90  mem_basic.o mem_grid.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 
	 
htint-opt.o  : $(UTILS_LIB)/htint-opt.f90 
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

inithis.o : $(IO)/inithis.f90  an_header.o io_params.o leaf_coms.o \
	mem_basic.o mem_grid.o mem_leaf.o mem_scratch.o micphys.o \
	rconstants.o ref_sounding.o var_tables.o mem_cuparm.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 
	 
interp_lib.o : $(UTILS_LIB)/interp_lib.f90 
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

io_params.o : $(IO)/io_params.f90 grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

isan_coms.o : $(ISAN_MODS)/isan_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

isan_io.o : $(ISAN)/isan_io.f90 isan_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ke_coms.o : $(TURB)/ke_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

kuo_cupar_driver.o : $(CUPARM)/kuo_cupar_driver.f90  conv_coms.o mem_basic.o mem_cuparm.o \
	mem_grid.o mem_scratch.o mem_tend.o node_mod.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

landuse_input.o : $(MKSFC)/landuse_input.f90  mem_mksfc.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

leaf_coms.o : $(SURFACE)/leaf_coms.f90 grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

leaf3.o : $(SURFACE)/leaf3.F90  io_params.o leaf_coms.o mem_all.o \
	mem_basic.o mem_cuparm.o mem_grid.o mem_leaf.o mem_micro.o \
	mem_scratch.o rconstants.o teb_spm_start.o mem_teb.o mem_teb_common.o
	cp -f $< $(<F:.f90=.F90)
	$(F_COMMAND) -DUSE_INTERF=$(USE_INTERF) $(<F:.f90=.F90)
	rm -f $(<F:.f90=.F90) 

leaf3_hyd.o : $(SURFACE)/leaf3_hyd.f90  leaf_coms.o mem_grid.o mem_leaf.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

leaf3_init.o : $(SURFACE)/leaf3_init.f90  io_params.o leaf_coms.o \
	mem_grid.o mem_leaf.o rconstants.o teb_spm_start.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

leaf3_teb.o : $(SURFACE)/leaf3_teb.f90 mem_teb_vars_const.o mem_emiss.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

local_proc.o : $(CORE)/local_proc.f90 mem_varinit.o mem_cuparm.o io_params.o \
	mem_grid.o catt_start.o rconstants.o ref_sounding.o rpara.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

machine_arq.o : $(CORE)/machine_arq.F90
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -D$(CMACH) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)
	 
map_proj.o   : $(UTILS_LIB)/map_proj.f90 rconstants.o
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

mem_aerad.o : $(RADIATE)/mem_aerad.f90 mem_grid_dim_defs.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_all.o : $(MEMORY)/mem_all.f90 mem_basic.o mem_cuparm.o \
	mem_grid.o mem_leaf.o mem_micro.o mem_radiate.o mem_scalar.o \
	mem_scratch.o mem_scratch1_brams.o mem_tend.o mem_turb.o \
	mem_varinit.o mem_nestb.o mem_oda.o var_tables.o \
	io_params.o micphys.o ref_sounding.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_basic.o : $(MEMORY)/mem_basic.f90 var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_carma.o : $(RADIATE)/mem_carma.f90 grid_dims.o mem_globrad.o mem_aerad.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_cuparm.o : $(CUPARM)/mem_cuparm.f90 grid_dims.o var_tables.o shcu_vars_const.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_emiss.o : $(TEB_SPM)/mem_emiss.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_ensemble.o : $(CUPARM)/mem_ensemble.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_gaspart.o : $(TEB_SPM)/mem_gaspart.f90 mem_emiss.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_globaer.o : $(RADIATE)/mem_globaer.f90 mem_precision.o mem_aerad.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_globrad.o : $(RADIATE)/mem_globrad.f90 mem_precision.o mem_aerad.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_grid.o : $(MEMORY)/mem_grid.f90 grid_dims.o var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_grid_dim_defs.o : $(MEMORY)/mem_grid_dim_defs.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_harr.o : $(RADIATE)/mem_harr.f90 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_leaf.o : $(SURFACE)/mem_leaf.f90 grid_dims.o var_tables.o \
	teb_spm_start.o io_params.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_mass.o: $(MASS)/mem_mass.f90 grid_dims.o mem_turb.o io_params.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_mclat.o: $(RADIATE)/mem_mclat.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_micro.o : $(MICRO)/mem_micro.f90 micphys.o var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_micro_optij.o : $(MICRO)/mem_micro_optij.f90 \
	micphys.o mem_grid.o mem_micro.o mem_basic.o \
	mem_radiate.o node_mod.o rconstants.o grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_mksfc.o : $(MKSFC)/mem_mksfc.f90 teb_spm_start.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_nestb.o : $(NESTING)/mem_nestb.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_oda.o : $(FDDA)/mem_oda.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_opt_scratch.o : $(TURB)/mem_opt_scratch.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_precision.o : $(RADIATE)/mem_precision.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_radiate.o : $(RADIATE)/mem_radiate.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_scalar.o : $(MEMORY)/mem_scalar.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_scratch.o : $(MEMORY)/mem_scratch.f90 grid_dims.o mem_cuparm.o \
	mem_aerad.o mem_radiate.o catt_start.o var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_scratch1_brams.o : $(MEMORY)/mem_scratch1_brams.f90 \
	var_tables.o grell_coms.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_scratch_grell.o : $(CUPARM)/mem_scratch_grell.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_sib.o : $(SIB)/mem_sib.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_sib_co2.o : $(SIB)/mem_sib_co2.f90 var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_soil_moisture.o : $(SOIL_MOISTURE)/mem_soil_moisture.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_tconv.o : $(CUPARM)/mem_tconv.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_teb.o : $(TEB_SPM)/mem_teb.f90 var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_teb_common.o : $(TEB_SPM)/mem_teb_common.f90 var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_teb_vars_const.o : $(TEB_SPM)/mem_teb_vars_const.f90 grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_tend.o : $(MEMORY)/mem_tend.f90 mem_basic.o mem_micro.o \
	mem_turb.o mem_scalar.o var_tables.o grid_dims.o \
	teb_spm_start.o mem_gaspart.o mem_emiss.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_turb.o : $(TURB)/mem_turb.f90 grid_dims.o var_tables.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_turb_scalar.o : $(TURB)/mem_turb_scalar.f90 \
	grid_dims.o var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mem_varinit.o : $(MEMORY)/mem_varinit.f90 grid_dims.o var_tables.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_coll.o : $(MICRO)/mic_coll.f90  micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_driv.o : $(MICRO)/mic_driv.f90  mem_basic.o mem_grid.o mem_micro.o \
	mem_radiate.o micphys.o node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mic_driv_new.o : $(MICRO)/mic_driv_new.f90  mem_basic.o mem_grid.o \
	mem_micro.o mem_radiate.o micphys.o node_mod.o mem_micro_optij.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_gamma.o : $(MICRO)/mic_gamma.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_init.o : $(MICRO)/mic_init.f90  micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_misc.o : $(MICRO)/mic_misc.f90  mem_basic.o mem_grid.o mem_micro.o \
	mem_scratch.o micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_nuc.o : $(MICRO)/mic_nuc.f90  micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_tabs.o : $(MICRO)/mic_tabs.f90  micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mic_vap.o : $(MICRO)/mic_vap.f90  micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

micphys.o : $(MICRO)/micphys.f90 grid_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mksfc_driver.o : $(MKSFC)/mksfc_driver.f90 teb_spm_start.o io_params.o \
	mem_grid.o mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mksfc_fuso.o : $(MKSFC)/mksfc_fuso.f90 mem_grid.o mem_teb.o mem_gaspart.o \
	io_params.o mem_teb_vars_const.o mem_emiss.o mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mksfc_ndvi.o : $(MKSFC)/mksfc_ndvi.f90  io_params.o mem_grid.o mem_leaf.o \
	mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mksfc_sfc.o : $(MKSFC)/mksfc_sfc.f90  io_params.o mem_grid.o mem_leaf.o \
	mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mksfc_sst.o : $(MKSFC)/mksfc_sst.f90  io_params.o mem_grid.o mem_leaf.o \
	mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mksfc_top.o : $(MKSFC)/mksfc_top.f90  io_params.o mem_grid.o mem_mksfc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mod_advect_kit.o : $(CORE)/mod_advect_kit.f90 mod_GhostBlockPartition.o \
	mod_GhostBlock.o mem_grid.o var_tables.o mem_tend.o mem_basic.o \
	node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mod_GhostBlock.o : $(CORE)/mod_GhostBlock.f90 mod_GhostBlockPartition.o \
	node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mod_GhostBlockPartition.o : $(CORE)/mod_GhostBlockPartition.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mod_ozone.o : $(TEB_SPM)/mod_ozone.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

model.o : $(CORE)/model.f90  catt_start.o io_params.o mem_grid.o rpara.o \
	mod_advect_kit.o local_proc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

modsched.o : $(CORE)/modsched.f90  io_params.o mem_basic.o mem_grid.o \
	mem_scratch.o rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_cyclic.o : $(MPI)/mpass_cyclic.f90  cyclic_mod.o mem_basic.o \
	mem_grid.o mem_scratch.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_dtl.o : $(MPI)/mpass_dtl.f90  mem_grid.o node_mod.o rpara.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_feed.o : $(MPI)/mpass_feed.f90  grid_dims.o mem_basic.o mem_grid.o \
	mem_scratch1_brams.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_full.o : $(MPI)/mpass_full.f90  io_params.o mem_aerad.o \
	mem_cuparm.o mem_grid.o mem_scratch.o mem_varinit.o \
	node_mod.o rpara.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_init.o : $(MPI)/mpass_init.f90  catt_start.o cyclic_mod.o extra.o \
	grid_dims.o mem_all.o mem_cuparm.o mem_globrad.o grell_coms.o \
	mem_grid.o micphys.o node_mod.o ref_sounding.o rpara.o \
	shcu_vars_const.o sib_vars.o teb_spm_start.o mem_teb_vars_const.o \
	mem_emiss.o plumerise_vector.o emission_source_map.o mem_mass.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_lbc.o : $(MPI)/mpass_lbc.f90  mem_grid.o mem_scratch.o \
	node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_nest.o : $(MPI)/mpass_nest.f90  mem_basic.o mem_grid.o \
	mem_nestb.o mem_scratch.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_oda.o : $(MPI)/mpass_oda.f90  grid_dims.o mem_oda.o node_mod.o rpara.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

mpass_st.o : $(MPI)/mpass_st.f90  mem_basic.o mem_grid.o mem_scratch.o \
	node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ncarg_dummy.o  : $(NCARGD)/ncarg_dummy.f90 
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

ndvi_read.o : $(MKSFC)/ndvi_read.f90  io_params.o mem_grid.o mem_leaf.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nest_drivers.o : $(NESTING)/nest_drivers.F90  mem_basic.o mem_grid.o \
	mem_nestb.o mem_scratch.o mem_tend.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.F90)
	$(F_COMMAND) -DUSE_INTERF=$(USE_INTERF) $(<F:.f90=.F90)
	rm -f $(<F:.f90=.F90) 

nest_feed.o : $(NESTING)/nest_feed.f90  mem_grid.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nest_filldens.o : $(NESTING)/nest_filldens.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nest_geosst.o : $(MKSFC)/nest_geosst.f90  io_params.o mem_basic.o \
	mem_grid.o mem_leaf.o mem_mksfc.o mem_scratch.o mem_soil_moisture.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nest_intrp.o : $(NESTING)/nest_intrp.f90  mem_basic.o mem_grid.o \
	mem_nestb.o mem_scratch.o rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nest_move.o : $(NESTING)/nest_move.f90  mem_basic.o mem_grid.o \
	mem_leaf.o mem_scratch.o mem_tend.o mem_turb.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

node_mod.o : $(MPI)/node_mod.f90 grid_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nud_analysis.o : $(FDDA)/nud_analysis.f90  mem_basic.o mem_grid.o \
	mem_scratch.o mem_tend.o mem_varinit.o node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nud_read.o : $(FDDA)/nud_read.f90  mem_grid.o mem_varinit.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

nud_update.o : $(FDDA)/nud_update.f90  an_header.o grid_struct.o \
	mem_basic.o mem_grid.o mem_varinit.o rconstants.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

obs_input.o : $(FDDA)/obs_input.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_krig.o : $(FDDA)/oda_krig.f90  mem_oda.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_nudge.o : $(FDDA)/oda_nudge.f90  io_params.o mem_basic.o \
	mem_grid.o mem_oda.o mem_scratch.o mem_tend.o node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_proc_obs.o : $(FDDA)/oda_proc_obs.f90  mem_grid.o mem_oda.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_read.o : $(FDDA)/oda_read.f90  mem_grid.o mem_oda.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_sta_count.o : $(FDDA)/oda_sta_count.f90  mem_grid.o mem_oda.o \
	obs_input.o mem_grid.o mem_oda.o obs_input.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

oda_sta_input.o : $(FDDA)/oda_sta_input.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

opspec.o : $(IO)/opspec.f90  io_params.o mem_cuparm.o teb_spm_start.o \
	mem_emiss.o catt_start.o mem_grid.o mem_leaf.o mem_radiate.o \
	mem_turb.o mem_varinit.o micphys.o sib_vars.o mem_globrad.o \
	mem_mass.o shcu_vars_const.o rconstants.o grell_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ozone.o : $(TEB_SPM)/ozone.f90 mem_grid.o mem_basic.o mem_gaspart.o \
	mem_radiate.o rconstants.o mem_tend.o var_tables.o \
	mod_ozone.o mem_gaspart.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

par_decomp.o : $(MPI)/par_decomp.f90  cyclic_mod.o mem_grid.o rpara.o \
	domain_decomp.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

para_init.o : $(MPI)/para_init.f90  mem_basic.o mem_grid.o \
	mem_scratch.o node_mod.o rpara.o var_tables.o domain_decomp.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

paral.o : $(MPI)/paral.f90  mem_aerad.o mem_grid.o mem_scratch.o \
	node_mod.o rpara.o var_tables.o mem_cuparm.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

polarst.o    : $(UTILS_LIB)/polarst.f90 rconstants.o
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

plumerise_vector.o : $(CATT)/plumerise_vector.f90 mem_basic.o \
	mem_grid.o extra.o node_mod.o mem_scalar.o rconstants.o machine_arq.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

raco.o : $(CORE)/raco.f90  mem_basic.o mem_grid.o mem_scratch.o \
	mem_tend.o micphys.o node_mod.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

raco_adap.o : $(CORE)/raco_adap.f90  mem_grid.o mem_scratch.o \
	node_mod.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rad_carma.o : $(RADIATE)/rad_carma.f90  mem_aerad.o mem_carma.o \
	mem_globaer.o mem_globrad.o mem_grid.o mem_radiate.o \
	mem_scratch.o rconstants.o machine_arq.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rad_ccmp.o : $(RADIATE)/rad_ccmp.f90 rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rad_driv.o : $(RADIATE)/rad_driv.F90  catt_start.o grid_dims.o \
	mem_basic.o mem_grid.o mem_harr.o mem_leaf.o mem_mclat.o \
	mem_micro.o mem_radiate.o mem_scalar.o mem_scratch.o \
	mem_tend.o micphys.o rad_carma.o rconstants.o ref_sounding.o \
	teb_spm_start.o mem_teb_common.o \
	shcu_vars_const.o grell_coms.o
	cp -f $< $(<F:.f90=.F90)
	$(F_COMMAND) -DUSE_INTERF=$(USE_INTERF) $(<F:.f90=.F90)
	rm -f $(<F:.f90=.F90) 

rad_mclat.o : $(RADIATE)/rad_mclat.f90 mem_grid.o mem_mclat.o mem_radiate.o \
	rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rad_stable.o : $(RADIATE)/rad_stable.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

radvc.o : $(CORE)/radvc.f90  mem_basic.o mem_grid.o mem_scratch.o \
	mem_tend.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

radvc_adap.o : $(CORE)/radvc_adap.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

radvc_new.o : $(CORE)/radvc_new.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

rams_grid.o : $(INIT)/rams_grid.f90  mem_grid.o node_mod.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rams_master.o : $(CORE)/rams_master.f90 catt_start.o io_params.o \
	mem_cuparm.o mem_grid.o mem_leaf.o mem_oda.o mem_mass.o \
	mem_turb.o mem_varinit.o rpara.o emission_source_map.o grid_dims.o \
	local_proc.o node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rams_mem_alloc.o : $(MEMORY)/rams_mem_alloc.f90 catt_start.o extra.o io_params.o \
	machine_arq.o mem_aerad.o mem_all.o mem_carma.o mem_emiss.o \
	mem_gaspart.o grell_coms.o mem_grid_dim_defs.o \
	mem_micro_optij.o mem_opt_scratch.o mem_scratch_grell.o mem_ensemble.o \
	mem_sib.o mem_sib_co2.o mem_mass.o mem_teb.o mem_teb_common.o \
	mem_teb_vars_const.o  mem_turb_scalar.o node_mod.o shcu_vars_const.o  \
	sib_vars.o teb_spm_start.o turb_constants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rams_read_header.o : $(IO)/rams_read_header.f90  an_header.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ranlavg.o : $(IO)/ranlavg.f90  io_params.o mem_basic.o mem_grid.o \
	mem_scratch.o mem_turb.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rbnd.o : $(BC)/rbnd.f90  mem_basic.o mem_grid.o mem_scratch.o \
	mem_tend.o mem_turb.o micphys.o node_mod.o ref_sounding.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rbnd_adap.o : $(BC)/rbnd_adap.f90  mem_grid.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rcio.o : $(IO)/rcio.f90  leaf_coms.o mem_all.o mem_mass.o grell_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rconstants.o : $(UTILS_LIB)/rconstants.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rconv_driver.o: $(CUPARM)/rconv_driver.f90 mem_grid.o mem_cuparm.o mem_turb.o \
	mem_scratch.o node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rdint.o : $(INIT)/rdint.f90 catt_start.o io_params.o mem_basic.o \
	mem_cuparm.o mem_grid.o mem_leaf.o mem_micro.o mem_oda.o mem_scalar.o \
	mem_scratch.o mem_soil_moisture.o mem_turb.o mem_varinit.o micphys.o \
	sib_vars.o var_tables.o teb_spm_start.o mem_radiate.o mem_mass.o \
	emission_source_map.o plumerise_vector.o mem_globrad.o error_mess.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

read_ralph.o : $(FDDA)/read_ralph.f90  obs_input.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

recycle.o : $(IO)/recycle.f90  io_params.o mem_grid.o mem_leaf.o \
	mem_scratch.o var_tables.o mem_cuparm.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ref_sounding.o : $(CORE)/ref_sounding.f90 grid_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

refstate.o : $(ISAN)/refstate.f90 rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rexev.o: $(MASS)/rexev.f90 mem_basic.o mem_grid.o mem_mass.o  mem_tend.o\
	mem_scratch.o micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rgrad.o : $(TURB)/rgrad.f90  mem_grid.o mem_scratch.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rhhi.o : $(INIT)/rhhi.f90  mem_basic.o mem_grid.o mem_scratch.o \
	micphys.o rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rhdf5.o : $(IO)/rhdf5.F90 an_header.o var_tables.o grid_dims.o mem_aerad.o \
	mem_grid.o io_params.o mem_cuparm.o
	cp -f $< $(<F:.f90=.F90)
	$(F_COMMAND) -DUSE_HDF5=$(USE_HDF5) $(<F:.f90=.F90)
	rm -f $(<F:.f90=.F90)

rinit.o : $(INIT)/rinit.f90  io_params.o mem_basic.o mem_grid.o \
	mem_micro.o mem_scratch.o mem_turb.o micphys.o node_mod.o \
	rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rio.o : $(IO)/rio.f90 an_header.o grid_dims.o io_params.o mem_cuparm.o \
	mem_aerad.o mem_basic.o mem_grid.o mem_scratch.o mem_turb.o \
	ref_sounding.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rmass.o: $(MASS)/rmass.f90 mem_grid.o mem_basic.o mem_mass.o mem_scratch.o \
	mem_scratch_grell.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rname.o : $(IO)/rname.f90  catt_start.o extra.o mem_all.o \
	mem_globrad.o grell_coms.o mem_soil_moisture.o rpara.o \
	shcu_vars_const.o sib_vars.o teb_spm_start.o \
	emission_source_map.o plumerise_vector.o mem_mass.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rnest_par.o : $(MPI)/rnest_par.f90  mem_grid.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rnode.o : $(CORE)/rnode.f90  catt_start.o io_params.o mem_basic.o \
	mem_grid.o mem_leaf.o mem_oda.o node_mod.o var_tables.o \
	mod_advect_kit.o local_proc.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rpara.o : $(MPI)/rpara.f90 grid_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rprnt.o : $(IO)/rprnt.f90  io_params.o leaf_coms.o mem_all.o \
	mem_basic.o mem_grid.o mem_leaf.o mem_scratch.o mem_turb.o \
	rconstants.o ref_sounding.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rthrm.o : $(CORE)/rthrm.f90  mem_basic.o mem_grid.o mem_micro.o \
	mem_scratch.o micphys.o rconstants.o mem_all.o mem_basic.o \
	mem_cuparm.o mem_grid.o mem_leaf.o mem_oda.o mem_radiate.o \
	mem_scalar.o mem_turb.o mem_varinit.o micphys.o node_mod.o \
	rconstants.o shcu_vars_const.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rtimh.o : $(CORE)/rtimh.f90 mem_basic.o mem_cuparm.o mem_grid.o \
	mem_leaf.o mem_oda.o mem_radiate.o mem_scalar.o mem_mass.o \
	mem_turb.o mem_varinit.o micphys.o node_mod.o shcu_vars_const.o \
	mod_advect_kit.o machine_arq.o emission_source_map.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

rtimi.o : $(CORE)/rtimi.f90  mem_basic.o mem_grid.o mem_scratch.o \
	mem_tend.o node_mod.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ruser.o : $(SURFACE)/ruser.f90  io_params.o mem_grid.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

shcu_vars_const.o : $(CUPARM)/shcu_vars_const.f90 conv_coms.o grid_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

sib_vars.o : $(SIB)/sib_vars.f90 ref_sounding.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

sib2_co2.o : $(SIB)/sib2_co2.f90  mem_grid.o mem_sib.o mem_sib_co2.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

sib2_driver.o : $(SIB)/sib2_driver.F90  leaf_coms.o mem_all.o \
	mem_basic.o mem_cuparm.o mem_micro.o mem_sib.o  teb_spm_start.o \
	mem_sib_co2.o rconstants.o
	cp -f $< $(<F:.f90=.F90)
	$(F_COMMAND) -DUSE_INTERF=$(USE_INTERF) $(<F:.f90=.F90)
	rm -f $(<F:.f90=.F90) 

sib2_init.o : $(SIB)/sib2_init.f90  leaf_coms.o mem_grid.o \
	mem_leaf.o mem_scalar.o mem_sib.o ref_sounding.o sib_vars.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

soil_moisture_init.o : $(SOIL_MOISTURE)/soil_moisture_init.f90  io_params.o \
	leaf_coms.o mem_grid.o mem_leaf.o mem_soil_moisture.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

souza_cupar_driver.o : $(CUPARM)/souza_cupar_driver.f90  conv_coms.o mem_basic.o \
	mem_grid.o mem_micro.o mem_scratch.o mem_tend.o \
	mem_turb.o node_mod.o mem_cuparm.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

sst_read.o : $(MKSFC)/sst_read.f90  io_params.o mem_grid.o mem_leaf.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

teb_spm_start.o : $(TEB_SPM)/teb_spm_start.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

therm_lib.o  : $(UTILS_LIB)/therm_lib.f90 rconstants.o
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)
	  
tmpname.o    : $(UTILS_LIB)/tmpname.c 
	  $(C_COMMAND) $<

tkenn.o: $(TURB)/tkenn.f90 mem_grid.o mem_scratch.o rconstants.o \
	turb_constants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_constants.o: $(TURB)/turb_constants.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_derivs.o : $(TURB)/turb_derivs.f90  mem_grid.o mem_scratch.o mem_turb.o \
	micphys.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_diff.o : $(TURB)/turb_diff.f90  catt_start.o mem_grid.o \
	mem_opt_scratch.o mem_scratch.o mem_turb.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_diff_adap.o : $(TURB)/turb_diff_adap.f90  mem_grid.o mem_scratch.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_k.o : $(TURB)/turb_k.f90  catt_start.o ke_coms.o mem_basic.o \
	mem_grid.o mem_leaf.o mem_mass.o mem_micro.o \
	mem_scratch.o mem_tend.o mem_turb.o mem_turb_scalar.o micphys.o \
	node_mod.o rconstants.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_k_adap.o : $(TURB)/turb_k_adap.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

turb_ke.o : $(TURB)/turb_ke.f90  ke_coms.o mem_grid.o mem_scratch.o \
	mem_turb.o rconstants.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

urban.o : $(SURFACE)/urban.f90 mem_teb_vars_const.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

urban_canopy.o : $(SURFACE)/urban_canopy.f90  mem_basic.o mem_grid.o \
	mem_scratch.o mem_tend.o mem_turb.o node_mod.o mem_grid.o mem_varinit.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 
	 
vformat.o    : $(UTILS_LIB)/vformat.f90 
	 cp -f $< $(<F:.f90=.f90)
	 $(F_COMMAND) $(<F:.f90=.f90)
	 rm -f $(<F:.f90=.f90)

v_interps.o : $(ISAN)/v_interps.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

var_tables.o : $(MEMORY)/var_tables.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

varf_read.o : $(FDDA)/varf_read.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

varf_update.o : $(FDDA)/varf_update.f90  mem_basic.o mem_grid.o \
	mem_leaf.o mem_scratch.o mem_varinit.o micphys.o \
	rconstants.o ref_sounding.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

vtab_fill.o : $(MEMORY)/vtab_fill.f90 io_params.o var_tables.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 


#===================================================================#
#===================================================================#
#===================================================================#
#===================================================================#
#==================== MIXED MEMORY ROUTINES ========================#
#===================================================================#
#===================================================================#
#===================================================================#
#===================================================================#
#===================================================================#

allometry.o : $(ED_DYNAMICS)/allometry.f90 grid_coms.o pft_coms.o soil_coms.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

an_header.o: $(ED_IO)/an_header.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

average_utils.o : $(ED_IO)/average_utils.f90 ed_state_vars.o consts_coms.o \
	misc_coms.o max_dims.o grid_coms.o ed_misc_coms.o \
	canopy_radiation_coms.o consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

c34constants.o : $(ED_MEMORY)/c34constants.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

canopy_air_coms.o : $(ED_MEMORY)/canopy_air_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

canopy_radiation_coms.o : $(ED_MEMORY)/canopy_radiation_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

canopy_update_euler.o : $(ED_DYNAMICS)/canopy_update_euler.f90 \
	ed_state_vars.o grid_coms.o canopy_radiation_coms.o \
	consts_coms.o max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

charutils.o: $(UTILS_LIB)/charutils.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

consts_coms.o : $(ED_MEMORY)/consts_coms.F90 rconstants.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -DCOUPLED $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

decomp_coms.o : $(ED_MEMORY)/decomp_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

decomposition.o : $(ED_DYNAMICS)/decomposition.f90 decomp_coms.o  \
	pft_coms.o soil_coms.o ed_state_vars.o grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

disturb_coms.o : $(ED_MEMORY)/disturb_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

disturbance.o : $(ED_DYNAMICS)/disturbance.f90 decomp_coms.o disturb_coms.o \
	max_dims.o misc_coms.o pft_coms.o ed_state_vars.o grid_coms.o \
	fuse_fiss_utils.o consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_bare_restart.o : $(ED_INIT)/ed_bare_restart.f90 ed_state_vars.o max_dims.o pft_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_grid.o : $(ED_UTILS)/ed_grid.f90 grid_coms.o ed_node_coms.o consts_coms.o max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ed_history_io.o : $(ED_IO)/ed_history_io.f90 max_dims.o \
	ed_state_vars.o max_dims.o pft_coms.o misc_coms.o \
	mem_sites.o consts_coms.o fusion_fission_coms.o \
	ed_misc_coms.o grid_coms.o soil_coms.o ed_node_coms.o hdf5_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(HDF5_INCS) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_init.o : $(ED_INIT)/ed_init.f90 ed_node_coms.o misc_coms.o  \
	grid_coms.o ed_work_vars.o disturbance.o  phenology_init.o   \
	soil_coms.o mem_sites.o  ed_state_vars.o misc_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

ed_mem_grid_dim_defs.o : $(ED_MEMORY)/ed_mem_grid_dim_defs.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_misc_coms.o : $(ED_MEMORY)/ed_misc_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_node_coms.o : $(ED_MPI)/ed_node_coms.f90 max_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ed_opspec.o : $(ED_IO)/ed_opspec.f90 max_dims.o grid_coms.o mem_sites.o \
	soil_coms.o ed_para_coms.o misc_coms.o consts_coms.o pft_coms.o \
	physiology_coms.o decomp_coms.o disturb_coms.o phenology_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_para_coms.o : $(ED_MPI)/ed_para_coms.f90 max_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

ed_para_init.o : $(ED_MPI)/ed_para_init.f90 grid_coms.o ed_para_coms.o ed_work_vars.o \
	soil_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_params.o : $(ED_INIT)/ed_params.f90 max_dims.o pft_coms.o disturb_coms.o \
	met_driver_coms.o hydrology_coms.o misc_coms.o soil_coms.o \
	phenology_coms.o fusion_fission_coms.o canopy_radiation_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_state_vars.o : $(ED_MEMORY)/ed_state_vars.f90 phenology_coms.o \
	grid_coms.o max_dims.o c34constants.o fusion_fission_coms.o \
	var_tables_array.o ed_node_coms.o disturb_coms.o met_driver_coms.o \
	misc_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_type_init.o : $(ED_INIT)/ed_type_init.f90 ed_state_vars.o max_dims.o  \
	soil_coms.o grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_work_vars.o : $(ED_MEMORY)/ed_work_vars.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ed_xml_config.o : $(ED_IO)/ed_xml_config.f90 ed_misc_coms.o \
	soil_coms.o pft_coms.o hydrology_coms.o met_driver_coms.o \
	canopy_radiation_coms.o disturb_coms.o phenology_coms.o \
	decomp_coms.o fusion_fission_coms.o physiology_coms.o \
	misc_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_driver.o : $(ED_MIXED)/edcp_driver.f90  grid_coms.o ed_state_vars.o \
	ed_node_coms.o soil_coms.o misc_coms.o consts_coms.o mem_edcp.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_init.o : $(ED_MIXED)/edcp_init.f90 \
	node_mod.o ed_node_coms.o ed_para_coms.o \
	max_dims.o ed_mem_grid_dim_defs.o ed_state_vars.o \
	grid_coms.o mem_sites.o ed_work_vars.o misc_coms.o \
	soil_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_load_namelist.o : $(ED_MIXED)/edcp_load_namelist.f90 max_dims.o \
	soil_coms.o met_driver_coms.o mem_sites.o pft_coms.o \
	physiology_coms.o phenology_coms.o decomp_coms.o disturb_coms.o \
	misc_coms.o max_dims.o grid_coms.o soil_coms.o optimiz_coms.o \
	mem_grid.o io_params.o mem_leaf.o mem_radiate.o grid_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_met.o : $(ED_MIXED)/edcp_met.f90 consts_coms.o \
	ed_state_vars.o mem_basic.o mem_radiate.o mem_cuparm.o \
	mem_micro.o mem_grid.o micphys.o rconstants.o rpara.o \
	node_mod.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_model.o : $(ED_MIXED)/edcp_model.f90 node_mod.o \
	mem_grid.o misc_coms.o grid_coms.o ed_state_vars.o \
	rk4_driver.o ed_node_coms.o disturb_coms.o \
	mem_sites.o consts_coms.o disturbance.o \
	fuse_fiss_utils.o growth_balive.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_mpiutils.o : $(ED_MIXED)/edcp_mpiutils.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edcp_met_init.o : $(ED_MIXED)/edcp_met_init.f90 misc_coms.o   \
	soil_coms.o consts_coms.o grid_coms.o \
	ed_state_vars.o fuse_fiss_utils.o ed_node_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

edio.o : $(ED_IO)/edio.f90 ed_state_vars.o misc_coms.o grid_coms.o \
	ed_node_coms.o consts_coms.o max_dims.o canopy_radiation_coms.o \
	var_tables_array.o ed_misc_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

ename_coms.o : $(ED_MEMORY)/ename_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

euler_driver.o : $(ED_DYNAMICS)/euler_driver.f90 ed_state_vars.o \
	misc_coms.o consts_coms.o soil_coms.o max_dims.o grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

farq_leuning.o : $(ED_DYNAMICS)/farq_leuning.f90 c34constants.o  \
	pft_coms.o physiology_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

fatal_error.o : $(ED_UTILS)/fatal_error.f90 ed_node_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

fire.o : $(ED_DYNAMICS)/fire.f90 ed_state_vars.o pft_coms.o grid_coms.o \
	soil_coms.o disturb_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

forestry.o : $(ED_DYNAMICS)/forestry.f90 ed_state_vars.o disturb_coms.o disturbance.o \
	max_dims.o grid_coms.o fuse_fiss_utils.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

fusion_fission_coms.o : $(ED_MEMORY)/fusion_fission_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

fuse_fiss_utils.o : $(ED_UTILS)/fuse_fiss_utils.f90 grid_coms.o \
	fusion_fission_coms.o mem_sites.o disturb_coms.o pft_coms.o \
	decomp_coms.o consts_coms.o ed_state_vars.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

great_circle.o : $(ED_UTILS)/great_circle.f90 consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

grid_coms.o : $(ED_MEMORY)/grid_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

growth_balive.o : $(ED_DYNAMICS)/growth_balive.f90  ed_state_vars.o \
	pft_coms.o physiology_coms.o grid_coms.o decomp_coms.o consts_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

h5_output.o : $(ED_IO)/h5_output.F90 an_header.o max_dims.o \
	var_tables_array.o mem_sites.o grid_coms.o soil_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(HDF5_INCS) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

hdf5_coms.o : $(ED_MEMORY)/hdf5_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(HDF5_INCS) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

hdf5_utils.o : $(ED_UTILS)/hdf5_utils.f90 hdf5_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(HDF5_INCS) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

hydrology_coms.o: $(ED_MEMORY)/hydrology_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

hydrology_constants.o: $(ED_MEMORY)/hydrology_constants.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

init_hydro_sites.o : $(ED_INIT)/init_hydro_sites.f90 grid_coms.o \
	soil_coms.o misc_coms.o ed_state_vars.o max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90) 
	rm -f $(<F:.f90=.f90)

invmondays.o : $(ED_UTILS)/invmondays.f90 misc_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

landuse_init.o : $(ED_INIT)/landuse_init.f90 consts_coms.o disturb_coms.o \
	misc_coms.o ed_state_vars.o grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

leaf_database.o : $(ED_IO)/leaf_database.f90 hdf5_utils.o grid_coms.o soil_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

libxml2f90.f90_pp.o : $(ED_UTILS)/libxml2f90.f90_pp.f90 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

lsm_hyd.o : $(ED_DYNAMICS)/lsm_hyd.f90  ed_state_vars.o grid_coms.o soil_coms.o \
	misc_coms.o ed_node_coms.o hydrology_coms.o hydrology_constants.o \
	consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

max_dims.o : $(ED_MEMORY)/max_dims.F90
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -DCOUPLED $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

mem_edcp.o : $(ED_MIXED)/mem_edcp.f90 	
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mem_sites.o : $(ED_MEMORY)/mem_sites.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

met_driver_coms.o : $(ED_MEMORY)/met_driver_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

misc_coms.o : $(ED_MEMORY)/misc_coms.f90 max_dims.o 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

mortality.o : $(ED_DYNAMICS)/mortality.f90 pft_coms.o \
	disturb_coms.o consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

numutils.o: $(UTILS_LIB)/numutils.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

optimiz_coms.o : $(ED_MEMORY)/optimiz_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90) 

phenology_aux.o : $(ED_DYNAMICS)/phenology_aux.f90 \
	phenology_coms.o max_dims.o pft_coms.o consts_coms.o \
	ed_state_vars.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

phenology_coms.o : $(ED_MEMORY)/phenology_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

phenology_driv.o : $(ED_DYNAMICS)/phenology_driv.f90 \
	soil_coms.o pft_coms.o decomp_coms.o phenology_coms.o \
	ed_state_vars.o grid_coms.o 
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

phenology_init.o : $(ED_INIT)/phenology_init.f90 grid_coms.o \
	phenology_coms.o misc_coms.o ed_state_vars.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

photosyn_driv.o : $(ED_DYNAMICS)/photosyn_driv.f90 max_dims.o grid_coms.o \
	canopy_radiation_coms.o soil_coms.o pft_coms.o ed_state_vars.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

physiology_coms.o : $(ED_MEMORY)/physiology_coms.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

pft_coms.o : $(ED_MEMORY)/pft_coms.f90 max_dims.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

radiate_driver.o : $(ED_DYNAMICS)/radiate_driver.f90 \
	ed_state_vars.o misc_coms.o canopy_radiation_coms.o \
	consts_coms.o soil_coms.o max_dims.o grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

reproduction.o : $(ED_DYNAMICS)/reproduction.f90 pft_coms.o \
	decomp_coms.o ed_state_vars.o \
	misc_coms.o fusion_fission_coms.o max_dims.o fuse_fiss_utils.o
	cp -f $< $(<F:.F90=.F90)	
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

rk4_derivs.o : $(ED_DYNAMICS)/rk4_derivs.F90 consts_coms.o ed_misc_coms.o \
	soil_coms.o misc_coms.o canopy_radiation_coms.o pft_coms.o grid_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

rk4_driver.o : $(ED_DYNAMICS)/rk4_driver.f90 ed_state_vars.o soil_coms.o \
	misc_coms.o consts_coms.o canopy_radiation_coms.o ed_misc_coms.o \
	grid_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

rk4_integ_utils.o : $(ED_DYNAMICS)/rk4_integ_utils.f90 ed_state_vars.o grid_coms.o \
	soil_coms.o rk4_stepper.o hydrology_coms.o canopy_radiation_coms.o \
	max_dims.o misc_coms.o grid_coms.o consts_coms.o ed_misc_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

rk4_stepper.o : $(ED_DYNAMICS)/rk4_stepper.F90 ed_state_vars.o \
	soil_coms.o grid_coms.o canopy_radiation_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

rsys.o: $(ED_UTILS)/rsys.F90
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -D$(CMACH) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

soil_coms.o : $(ED_MEMORY)/soil_coms.F90 max_dims.o grid_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) -DCOUPLED $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

structural_growth.o : $(ED_DYNAMICS)/structural_growth.f90 \
	ed_state_vars.o pft_coms.o decomp_coms.o max_dims.o consts_coms.o
	cp -f $< $(<F:.F90=.F90)
	$(F_COMMAND) $(<F:.F90=.F90)
	rm -f $(<F:.F90=.F90)

thermlibsupp.o: $(ED_MIXED)/thermlibsupp.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

twostream_rad.o : $(ED_DYNAMICS)/twostream_rad.f90 pft_coms.o \
	canopy_radiation_coms.o consts_coms.o
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

utils_c.o: $(ED_UTILS)/utils_c.c
	$(C_COMMAND) $<

utils_f.o: $(UTILS_LIB)/utils_f.f90
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)

var_tables_array.o : $(ED_MEMORY)/var_tables_array.f90 
	cp -f $< $(<F:.f90=.f90)
	$(F_COMMAND) $(<F:.f90=.f90)
	rm -f $(<F:.f90=.f90)