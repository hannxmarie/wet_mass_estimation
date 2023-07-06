format long
clear clc

%% Hannah - HML Dry and Wet Mass Assumptions Chemical

% Initial Parameters
% dvchem1 = 102035
% dvelt = 5369
% dvchem2 = 21713

dry_mass = 60e3;
% delta_v_ch1 = 4.178539959038108e+02; 
% delta_v_ch2 = 9.602246089746536e+02;
delta_v_el = 11e+2; %7982;%5.674812669798354e+02;
g0 = 9.806;

% % Chemical Loop
% for Isp = [400] %1198
%     ve = Isp*g0;
%     R = exp(delta_v_ch1/ve)*exp(delta_v_ch2/ve);
%     wet_mass = R*dry_mass
%     propellant_mass1 = wet_mass-dry_mass
%     launches = wet_mass/130e3;
%     if wet_mass < 130e3
%         fprintf('ch can be launched \n')
%     else
%         fprintf('ch oops \n')
%     end
% end

% Electrical Loop
for Isp = [310]
    ve = Isp*g0;
    R = exp(delta_v_el/ve);
    wet_mass = R*dry_mass;
    propellant_mass2 = wet_mass-dry_mass
    launches = wet_mass/130e3;
    if wet_mass < 130e3
        fprintf('el can be launched \n')
    else
        fprintf('el oops \n')
    end
end
% P = 0.009;
% totalmass = propellant_mass1+propellant_mass2+dry_mass;
% time_el = ((-(propellant_mass2/1000))/(-(P/(g0*3100))))/86400;
% time_yr = time_el/365;