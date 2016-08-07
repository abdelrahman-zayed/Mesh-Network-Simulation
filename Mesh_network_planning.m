% assuming the base area 100 * 100 m^2
base_area = 10000;
base_Nodes = 17;

area = input ('Enter Area To Be Covered:');
overall_Nodes = base_Nodes * (area / base_area);

% assuming in the base area 1 optical fiber and 4 DSL
optical_nodes = 1 * (area / base_area)
DSL_nodes = 4 * (area / base_area)
wireless_nodes = overall_Nodes - optical_nodes - DSL_nodes