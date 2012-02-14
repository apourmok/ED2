#!/bin/sh
rm -fv edmain.o                   edmain.mod
rm -fv allometry.o                allometry.mod 
rm -fv an_header.o                an_header.mod 
rm -fv average_utils.o            average_utils.mod 
rm -fv bdf2_solver.o              bdf2_solver.mod 
rm -fv budget_utils.o             budget_utils.mod 
rm -fv canopy_air_coms.o          canopy_air_coms.mod 
rm -fv canopy_layer_coms.o        canopy_layer_coms.mod 
rm -fv canopy_radiation_coms.o    canopy_radiation_coms.mod 
rm -fv canopy_struct_dynamics.o   canopy_struct_dynamics.mod
rm -fv c34constants.o             c34constants.mod 
rm -fv charutils.o                charutils.mod 
rm -fv consts_coms.o              consts_coms.mod 
rm -fv dateutils.o                dateutils.mod 
rm -fv decomp_coms.o              decomp_coms.mod 
rm -fv detailed_coms.o            detailed_coms.mod 
rm -fv disturbance.o              disturbance.mod 
rm -fv disturb_coms.o             disturb_coms.mod 
rm -fv edio.o                     edio.mod 
rm -fv ed_1st.o                   ed_1st.mod 
rm -fv ed_bare_restart.o          ed_bare_restart.mod 
rm -fv ed_driver.o                ed_driver.mod 
rm -fv ed_filelist.o              ed_filelist.mod 
rm -fv ed_grid.o                  ed_grid.mod 
rm -fv ed_init.o                  ed_init.mod 
rm -fv ed_init_atm.o              ed_init_atm.mod 
rm -fv ed_init_full_history.o     ed_init_full_history.mod 
rm -fv ed_load_namelist.o         ed_load_namelist.mod 
rm -fv ed_max_dims.o              ed_max_dims.mod 
rm -fv ed_mem_alloc.o             ed_mem_alloc.mod 
rm -fv ed_mem_grid_dim_defs.o     ed_mem_grid_dim_defs.mod 
rm -fv ed_met_driver.o            ed_met_driver.mod 
rm -fv ed_misc_coms.o             ed_misc_coms.mod 
rm -fv ed_model.o                 ed_model.mod 
rm -fv ed_mpass_init.o            ed_mpass_init.mod 
rm -fv ed_node_coms.o             ed_node_coms.mod 
rm -fv ed_opspec.o                ed_opspec.mod 
rm -fv ed_params.o                ed_params.mod 
rm -fv ed_para_coms.o             ed_para_coms.mod 
rm -fv ed_para_init.o             ed_para_init.mod 
rm -fv ed_print.o                 ed_print.mod 
rm -fv ed_read_ed10_20_history.o  ed_read_ed10_20_history.mod
rm -fv ed_read_ed21_history.o     ed_read_ed21_history.mod
rm -fv ed_state_vars.o            ed_state_vars.mod 
rm -fv ed_therm_lib.o             ed_therm_lib.mod
rm -fv ed_type_init.o             ed_type_init.mod 
rm -fv ed_var_tables.o            ed_var_tables.mod
rm -fv ed_work_vars.o             ed_work_vars.mod 
rm -fv ed_xml_config.o            ed_xml_config.mod 
rm -fv ename_coms.o               ename_coms.mod 
rm -fv euler_driver.o             euler_driver.mod 
rm -fv events.o                   events.mod
rm -fv farq_leuning.o             farq_leuning.mod 
rm -fv fatal_error.o              fatal_error.mod 
rm -fv fire.o                     fire.mod 
rm -fv forestry.o                 forestry.mod 
rm -fv fusion_fission_coms.o      fusion_fission_coms.mod 
rm -fv fuse_fiss_utils.o          fuse_fiss_utils.mod 
rm -fv great_circle.o             great_circle.mod 
rm -fv grid_coms.o                grid_coms.mod 
rm -fv growth_balive.o            growth_balive.mod 
rm -fv h5_output.o                h5_output.mod 
rm -fv hdf5_coms.o                hdf5_coms.mod 
rm -fv hdf5_utils.o               hdf5_utils.mod 
rm -fv heun_driver.o              heun_driver.mod 
rm -fv hybrid_driver.o            hybrid_driver.mod 
rm -fv hydrology_coms.o           hydrology_coms.mod 
rm -fv hydrology_constants.o      hydrology_constants.mod 
rm -fv init_hydro_sites.o         init_hydro_sites.mod 
rm -fv invmondays.o               invmondays.mod 
rm -fv landuse_init.o             landuse_init.mod 
rm -fv lapse.o                    lapse.mod 
rm -fv leaf_database.o            leaf_database.mod 
rm -fv libxml2f90.f90_pp.o        libxml2f90.f90_pp.mod 
rm -fv lsm_hyd.o                  lsm_hyd.mod 
rm -fv mem_polygons.o             mem_polygons.mod 
rm -fv met_driver_coms.o          met_driver_coms.mod 
rm -fv mortality.o                mortality.mod 
rm -fv multiple_scatter.o         multilple_scatter.mod
rm -fv numutils.o                 numutils.mod 
rm -fv optimiz_coms.o             optimiz_coms.mod 
rm -fv phenology_aux.o            phenology_aux.mod 
rm -fv phenology_coms.o           phenology_coms.mod 
rm -fv phenology_driv.o           phenology_driv.mod 
rm -fv phenology_startup.o        phenology_startup.mod 
rm -fv photosyn_driv.o            photosyn_driv.mod 
rm -fv physiology_coms.o          physiology_coms.mod 
rm -fv pft_coms.o                 pft_coms.mod 
rm -fv radiate_driver.o           radiate_driver.mod 
rm -fv radiate_utils.o            radiate_utils.mod 
rm -fv reproduction.o             reproduction.mod 
rm -fv rk4_coms.o                 rk4_coms.mod 
rm -fv rk4_derivs.o               rk4_derivs.mod 
rm -fv rk4_driver.o               rk4_driver.mod 
rm -fv rk4_integ_utils.o          rk4_integ_utils.mod 
rm -fv rk4_misc.o                 rk4_misc.mod 
rm -fv rk4_stepper.o              rk4_stepper.mod 
rm -fv rsys.o                     rsys.mod 
rm -fv soil_coms.o                soil_coms.mod 
rm -fv soil_respiration.o         soil_respiration.mod 
rm -fv structural_growth.o        structural_growth.mod 
rm -fv therm_lib.o                therm_lib.mod 
rm -fv therm_lib8.o               therm_lib8.mod 
rm -fv twostream_rad.o            twostream_rad.mod 
rm -fv update_derived_props.o     update_derived_props.mod
rm -fv utils_c.o                  utils_c.mod 
rm -fv utils_f.o                  utils_f.mod 
rm -fv vegetation_dynamics.o      vegetation_dynamics.mod
