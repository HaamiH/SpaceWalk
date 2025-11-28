/// scr_particle_burst(_px, _py, _col, _maxDist, _lifeSteps, _speedPercent, _stopSteps)
/// @param _px          X position (usually object.x)
/// @param _py          Y position (usually object.y)
/// @param _col         Particle color
/// @param _maxDist     Max distance particles can travel (pixels)
/// @param _lifeSteps   Total lifetime in steps
/// @param _speedPercent Speed factor (1–100)
/// @param _stopSteps   How many steps at the END particles should stop

function scr_particle_burst(_px, _py, _col, _maxDist, _lifeSteps, _speedPercent, _stopSteps) {
    
    // Create particle system
    var ps = part_system_create();
    part_system_depth(ps, -100);
    
    // Create particle type
    var pt = part_type_create();
    
    // Appearance
    part_type_shape(pt, pt_shape_pixel);
    part_type_size(pt, 1, 1, 0, 0);
    part_type_color1(pt, _col);
    
    // Lifetime
    part_type_life(pt, _lifeSteps, _lifeSteps);
    
    // Calculate natural speed
    var natural_speed = _maxDist / (_lifeSteps - _stopSteps);
    var base_speed    = natural_speed * (_speedPercent / 100);
    
    // Randomize speed per particle
    var min_speed = base_speed * 0.7;
    var max_speed = base_speed * 1.3;
    
    // Motion
    part_type_speed(pt, min_speed, max_speed, 0, 0);
    part_type_direction(pt, 0, 360, 0, 0);
    
    // Stop phase: particles slow to 0 at the end
    part_type_speed(pt, min_speed, max_speed, 0, _stopSteps);
    
    // Emit burst
    part_particles_create(ps, _px, _py, pt, _maxDist * 2);
    
    // Cleanup
    global.ps_cleanup = ps;
    global.pt_cleanup = pt;
    alarm[1] = _lifeSteps;
}
