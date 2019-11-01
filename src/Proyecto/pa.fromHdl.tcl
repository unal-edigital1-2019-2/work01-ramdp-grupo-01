
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Proyecto -dir "C:/Users/Julian Pulido/Documents/GitHub/work01-ramdp-grupo-01/src/Proyecto/planAhead_run_1" -part xc7a100tcsg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Conects.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../buffer_ram_dp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top buffer_ram_dp $srcset
add_files [list {Conects.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc7a100tcsg324-3
