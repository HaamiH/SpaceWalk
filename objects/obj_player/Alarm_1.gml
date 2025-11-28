if (variable_global_exists("pt_cleanup")) {
    part_type_destroy(global.pt_cleanup);
}
if (variable_global_exists("ps_cleanup")) {
    part_system_destroy(global.ps_cleanup);
}
