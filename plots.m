%% Just make sure that the different driver programs produce the same output files.
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/SeaStSim/SeaSt_Driver.SeaSt.out','./current/5MW_OC4Semi-firstonly/HDSim/HD_Driver.SeaSt.out'},{'SeaStDvr','HDDvr'});
%% Now show that the original code and the new code produce the same results for the same Wave Kinematics (1st order only) specifications
%need to manually (or with a script) replace the new code's output channel headers specified below, so that the plotting script finds matching channels
%       
%Replace:      ...                          J1WaveElev                         J1WaveElv1         ...                J1WaveElv2                         J2WaveElev                         J2WaveElv1                         J2WaveElv2 
%With   :      ...                          Wave1Elev                          Wave1Elv1          ...                Wave1Elv2                          Wave2Elev                          Wave2Elv1                          Wave2Elv2  
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/HDSim/HD_Driver.HD.out','./original/5MW_OC4Semi-firstonly/HDSim/hd_driver.HD.out'},{'SeaStDvr','OrigHDDvr'});
%% Now show that the original code and the new code produce the same results for the same Wave Kinematics (1st order + 2nd order) specifications
%need to manually (or with a script) replace the new code's output channel headers specified below, so that the plotting script finds matching channels
%       
%Replace:      ...                          J1WaveElev                         J1WaveElv1         ...                J1WaveElv2                         J2WaveElev                         J2WaveElv1                         J2WaveElv2 
%With   :      ...                          Wave1Elev                          Wave1Elv1          ...                Wave1Elv2                          Wave2Elev                          Wave2Elv1                          Wave2Elv2  
PlotFASToutput({'./current/5MW_OC4Semi-second/HDSim/HD_Driver.HD.out','./original/5MW_OC4Semi-second/HDSim/hd_driver.HD.out'},{'SeaStDvr','OrigHDDvr'});
%% This test case shows that given a periodic wave, with a 3 sec period (and a calculated wavelength of 14.6 (should be 14.05) meters, we can use the new code's ability to displace the structure and use the displaced kinematics
% Test 1
% Displace one model 1/2 a wavelength (7.3 meters) compared to a baseline model with no displacement. 
% Results should be that the wave kinematics are 180 degrees out of phase at the various member / joint locations
PlotFASToutput({'./current/Periodic/HDSim/HD_Driver_Zero_Disp.HD.out','./current/Periodic/HDSim/HD_Driver_7m_Disp.HD.out'},{'ZeroDisp','7m_Disp'});
% Test 2
% Displace one model  a wavelength (14.6 meters) compared to a baseline model with no displacement. 
% Results should be that the wave kinematics match at the various member / joint locations
PlotFASToutput({'./current/Periodic/HDSim/HD_Driver_Zero_Disp.HD.out','./current/Periodic/HDSim/HD_Driver_14m_Disp.HD.out'},{'ZeroDisp','14m_Disp'});
%% Verify New code matches original code for the OC4 Semi when ElastoDyn has Platform DOF fixed and there are no platform offsets.
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/FASTSim/fast_driver_fixed_no_offset.out','./original/5MW_OC4Semi-firstonly/FASTSim/fast_driver_fixed_no_offset.out'},{'Current','Original'});
%% Verify New code matches original code for the OC4 Semi when ElastoDyn has Platform DOF fixed and there is an initial 5m Surge offset
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/FASTSim/fast_driver_fixed_w_surge.out','./original/5MW_OC4Semi-firstonly/FASTSim/fast_driver_fixed_w_surge.out'},{'Current','Original'});
%% Verify New code is different from original code for the OC4 Semi when ElastoDyn has Platform DOF free and there is an initial 5m Surge offset
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/FASTSim/fast_driver.out','./original/5MW_OC4Semi-firstonly/FASTSim/fast_driver.out'},{'Current','Original'});
%% Verify New code matches original code for the OC4 Semi when ElastoDyn has Platform DOF fixed and there is an initial 5m Surge offset, and ExctnDisp = WaveDisp = 0 for the current model
PlotFASToutput({'./current/5MW_OC4Semi-firstonly/FASTSim/fast_driver_noWEIS.out','./original/5MW_OC4Semi-firstonly/FASTSim/fast_driver.out'},{'Current','Original'});
%% WAMIT Models HERE
PlotFASToutput({'./current/NBodyMod1/NBodyMod1.HD.out','./original/NBodyMod1/NBodyMod1.HD.out'},{'Current','Original'});
PlotFASToutput({'./current/NBodyMod2/NBodyMod2.HD.out','./original/NBodyMod2/NBodyMod2.HD.out'},{'Current','Original'});
PlotFASToutput({'./current/NBodyMod3/NBodyMod3.HD.out','./original/NBodyMod3/NBodyMod3.HD.out'},{'Current','Original'});

