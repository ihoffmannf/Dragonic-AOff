/// @description  Control posición

x = __view_get( e__VW.XView, 0 ) + 70; 
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 70;

if (
position_meeting(device_mouse_x(0), device_mouse_y(0), self) ||
position_meeting(device_mouse_x(1), device_mouse_y(1), self) ||
position_meeting(device_mouse_x(2), device_mouse_y(2), self) ||
position_meeting(device_mouse_x(3), device_mouse_y(3), self) ||
position_meeting(device_mouse_x(4), device_mouse_y(4), self)
) {
	var deviceLibre = elegirDeviceLibre()
	if (deviceEnAreaFlechas == -1 || !position_meeting(device_mouse_x(deviceEnAreaFlechas), device_mouse_y(deviceEnAreaFlechas), self) || (deviceLibre != -1 && deviceLibre < deviceEnAreaFlechas && position_meeting(device_mouse_x(deviceLibre), device_mouse_y(deviceLibre), self))) {
		deviceEnAreaFlechas = deviceLibre // Se queda con el device más chico posible
	}
}