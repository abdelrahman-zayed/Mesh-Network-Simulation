clear;
clc;

opticfiber_No=input('Enter Number of High Speed Nodes: ');
DSL_No=input('Enter Number of DSL Nodes: ');
wireless_No=input('Enter Number of Wireless Nodes: ');

overall_Nodes = wireless_No + opticfiber_No + DSL_No;

opticfiber_speed = randi([20,100],1,1);
DSL_speed = randi([4,16],1,1);

s1 = (opticfiber_No*opticfiber_speed)/overall_Nodes; %speed of optical fiber per Node
s2 = (DSL_No*DSL_speed)/overall_Nodes; %speed of DSL per Node
speed_per_Node_Mbps = s1+s2 %Mbps

%Number of Nodes connected to one optical fiber :
Nodes_per_fiber = ceil(opticfiber_speed/speed_per_Node_Mbps)
%Number of Nodes connected to one DSL cable :
Nodes_per_DSL = ceil(DSL_speed/speed_per_Node_Mbps)

%checking if the whole Nodes will be connected to internet or not
overall_Nodes_coverage = Nodes_per_fiber*opticfiber_No + Nodes_per_DSL*DSL_No;
if (overall_Nodes_coverage-overall_Nodes) >= 0
    display('Right Calculation')
else
    display('Bad Calculation !!')
end