﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Apply_20V_to_J5000-1.vi" Type="VI" URL="../Apply_20V_to_J5000-1.vi"/>
		<Item Name="Disconnect_Voltage_Reference_from_UUT.vi" Type="VI" URL="../Disconnect_Voltage_Reference_from_UUT.vi"/>
		<Item Name="Apply_8V_to_J5001-T5002.vi" Type="VI" URL="../Apply_8V_to_J5001-T5002.vi"/>
		<Item Name="Apply_10V_to_J5001-T5002.vi" Type="VI" URL="../Apply_10V_to_J5001-T5002.vi"/>
		<Item Name="Apply_17V_to_VBAT.vi" Type="VI" URL="../Apply_17V_to_VBAT.vi"/>
		<Item Name="Apply_19V_to_VBAT.vi" Type="VI" URL="../Apply_19V_to_VBAT.vi"/>
		<Item Name="Set_J17Low-J18High.vi" Type="VI" URL="../Set_J17Low-J18High.vi"/>
		<Item Name="Set_J17High-J18Low.vi" Type="VI" URL="../Set_J17High-J18Low.vi"/>
		<Item Name="No Trip Tests at 120mA.vi" Type="VI" URL="../No Trip Tests at 120mA.vi"/>
		<Item Name="Test Trips at 250mA.vi" Type="VI" URL="../Test Trips at 250mA.vi"/>
		<Item Name="2.5A_Test.vi" Type="VI" URL="../2.5A_Test.vi"/>
		<Item Name="1.7A_Test.vi" Type="VI" URL="../1.7A_Test.vi"/>
		<Item Name="Over Current Dead Short to VBAT.vi" Type="VI" URL="../Over Current Dead Short to VBAT.vi"/>
		<Item Name="Measure_VCOM.vi" Type="VI" URL="../Measure_VCOM.vi"/>
		<Item Name="Shutdown_PS1.vi" Type="VI" URL="../Shutdown_PS1.vi"/>
		<Item Name="Shutdown_PS2.vi" Type="VI" URL="../Shutdown_PS2.vi"/>
		<Item Name="Remove Dead Short.vi" Type="VI" URL="../Remove Dead Short.vi"/>
		<Item Name="LoadTSConfigFile.vi" Type="VI" URL="../LoadTSConfigFile.vi"/>
		<Item Name="Connect_PS1-_GND.vi" Type="VI" URL="../Connect_PS1-_GND.vi"/>
		<Item Name="Disconnect_PS1-_GND.vi" Type="VI" URL="../Disconnect_PS1-_GND.vi"/>
		<Item Name="Connect_PS1-_PS2+.vi" Type="VI" URL="../Connect_PS1-_PS2+.vi"/>
		<Item Name="Disconnect_PS1-_PS2+.vi" Type="VI" URL="../Disconnect_PS1-_PS2+.vi"/>
		<Item Name="Set_PS1_15V_in_Series.vi" Type="VI" URL="../Set_PS1_15V_in_Series.vi"/>
		<Item Name="Set_PS1_15V_independent.vi" Type="VI" URL="../Set_PS1_15V_independent.vi"/>
		<Item Name="Set_PS2_16V.vi" Type="VI" URL="../Set_PS2_16V.vi"/>
		<Item Name="Set_PS2_18V.vi" Type="VI" URL="../Set_PS2_18V.vi"/>
		<Item Name="Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.vi" Type="VI" URL="../Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="BK Precision 178XB Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/BK Precision 178XB Series/BK Precision 178XB Series.lvlib"/>
				<Item Name="Keithley 27XX.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Keithley 27XX/Keithley 27XX.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create AI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel (sub).vi"/>
				<Item Name="DAQmx Create AI Channel TEDS(sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AI Channel TEDS(sub).vi"/>
				<Item Name="DAQmx Create AO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create AO Channel (sub).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create CI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CI Channel (sub).vi"/>
				<Item Name="DAQmx Create CO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create CO Channel (sub).vi"/>
				<Item Name="DAQmx Create DI Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DI Channel (sub).vi"/>
				<Item Name="DAQmx Create DO Channel (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create DO Channel (sub).vi"/>
				<Item Name="DAQmx Create Strain Rosette AI Channels (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Strain Rosette AI Channels (sub).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Rollback Channel If Error.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Rollback Channel If Error.vi"/>
				<Item Name="DAQmx Set CJC Parameters (sub).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Set CJC Parameters (sub).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="BKPrecision_PS_Control.vi" Type="VI" URL="../../1788/BKPrecision_PS_Control.vi"/>
			<Item Name="BKPrecision_PS_Shutdown.vi" Type="VI" URL="../../1788/BKPrecision_PS_Shutdown.vi"/>
			<Item Name="count_string_matches.vi" Type="VI" URL="../../Utility/count_string_matches.vi"/>
			<Item Name="DAQmx_Write_Digital_PortLine.vi" Type="VI" URL="../../DAQ/DAQmx_Write_Digital_PortLine.vi"/>
			<Item Name="Find Device Name.vi" Type="VI" URL="../../Utility/Find Device Name.vi"/>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Open_All_Relays_except_P.2.2_P1.7.vi" Type="VI" URL="../Open_All_Relays_except_P.2.2_P1.7.vi"/>
			<Item Name="RunTimeExitApp.vi" Type="VI" URL="../../Utility/RunTimeExitApp.vi"/>
			<Item Name="Update DAQ Device Name.vi" Type="VI" URL="../../Utility/Update DAQ Device Name.vi"/>
			<Item Name="Measure Voltage.vi" Type="VI" URL="../../2700/Measure Voltage.vi"/>
			<Item Name="Write Std Out with Redirection.vi" Type="VI" URL="../../MISC/OperatorPrompts/Stdout/Write Std Out with Redirection.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System" Type="VI" URL="System">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="PS1-_GND_Connection.vi" Type="VI" URL="../PS1-_GND_Connection.vi"/>
			<Item Name="PS1-_PS2+_Connection.vi" Type="VI" URL="../PS1-_PS2+_Connection.vi"/>
			<Item Name="Open_All_Relays_except_P.2.1_P.2.2.vi" Type="VI" URL="../Open_All_Relays_except_P.2.1_P.2.2.vi"/>
			<Item Name="Open_All_Relays_except_PNEU_P.2.2.vi" Type="VI" URL="../Open_All_Relays_except_PNEU_P.2.2.vi"/>
			<Item Name="Set_PS1_Volts.vi" Type="VI" URL="../Set_PS1_Volts.vi"/>
			<Item Name="Set_PS2_Volts.vi" Type="VI" URL="../Set_PS2_Volts.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Apply_0V_to_J5000-1" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{2ABF96F9-7825-43CC-A508-D3B65F58EB1B}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0ECBDEC9-E386-4D4C-8844-61E64F9B8609}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3D42DE5A-0ADD-4AF8-B99B-0D9FA7F7813E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_0V_to_J5000-1</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0B48AD59-543B-49FA-9B69-51D73C10A60E}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">10</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_0V_to_J5000-1.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_0V_to_J5000-1.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Dependencies/Set_PS2_Volts.vi</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_0V_to_J5000-1</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_0V_to_J5000-1</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_0V_to_J5000-1</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{12B99CFE-2E8B-4176-98FD-EE56B20B9151}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_0V_to_J5000-1.exe</Property>
			</Item>
			<Item Name="Apply_20V_to_J5000-1" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{D17963F3-0FC6-4A85-8DAF-01EFE2772490}</Property>
				<Property Name="App_INI_GUID" Type="Str">{079520F0-E27E-430A-80E9-4ECAE002666E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{62584467-DCB5-4855-8FE7-DFE81C677018}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_20V_to_J5000-1</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C81CE34B-9E15-46AF-9AB3-FAE3F8E87584}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">25</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_20V_to_J5000-1.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_20V_to_J5000-1.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Apply_20V_to_J5000-1.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Shutdown_PS2.vi</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Shutdown_PS1.vi</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/LoadTSConfigFile.vi</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">6</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_20V_to_J5000-1</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_20V_to_J5000-1</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_20V_to_J5000-1</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{AEF34572-D085-4D97-B1B8-739CF81DDFD9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_20V_to_J5000-1.exe</Property>
			</Item>
			<Item Name="Disconnect_Voltage_Reference_from_UUT" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7367CF7A-474D-4AF6-9675-AFCA7D8D2216}</Property>
				<Property Name="App_INI_GUID" Type="Str">{5CE91538-FC77-4095-8827-531AEACFC1A2}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{400E8D2B-57B8-4AB4-90C4-BD5ECE90563A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Disconnect_Voltage_Reference_from_UUT</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F61D1C8A-5588-4CAE-B8CB-B2C5F0BFE8B3}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">13</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Disconnect_Voltage_Reference_from_UUT.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Disconnect_Voltage_Reference_from_UUT.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Disconnect_Voltage_Reference_from_UUT.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Disconnect_Voltage_Reference_from_UUT</Property>
				<Property Name="TgtF_internalName" Type="Str">Disconnect_Voltage_Reference_from_UUT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Disconnect_Voltage_Reference_from_UUT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3040A8EF-9331-493E-A2F8-68BC99FE1693}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Disconnect_Voltage_Reference_from_UUT.exe</Property>
			</Item>
			<Item Name="Apply_8V_to_J5001-T5002" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{CB31F275-0002-499C-AE28-A19AE42B8CFF}</Property>
				<Property Name="App_INI_GUID" Type="Str">{66FFC750-9468-4F8B-8C6E-C5C199778E8E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{419AA7BE-FF5C-45BB-B7E3-DCE178229AE7}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_8V_to_J5001-T5002</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D05D4B14-A3C4-432B-A458-5F1EA5D05B42}</Property>
				<Property Name="Bld_version.build" Type="Int">3</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_8V_to_J5001-T5002.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_8V_to_J5001-T5002.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{07CAB018-A81B-45A0-B142-9C3C274143AF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Apply_8V_to_J5001-T5002.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_8V_to_J5001-T5002</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_8V_to_J5001-T5002</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_8V_to_J5001-T5002</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A1BD9555-680D-40E9-8F7E-DD1FAA6C3B15}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_8V_to_J5001-T5002.exe</Property>
			</Item>
			<Item Name="Apply_10V_to_J5001-T5002" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E71FBA3D-9BBA-45A3-85DF-5349D3493511}</Property>
				<Property Name="App_INI_GUID" Type="Str">{35D3B38E-ACE2-414A-8BB6-790E9E5C78B6}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{3DB62DEF-5A86-49A2-B675-6D425514A129}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_10V_to_J5001-T5002</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C0FEECE0-A271-4F22-AEE4-4F0AF703C138}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">26</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_10V_to_J5001-T5002.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_10V_to_J5001-T5002.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{07CAB018-A81B-45A0-B142-9C3C274143AF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Apply_10V_to_J5001-T5002.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_10V_to_J5001-T5002</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_10V_to_J5001-T5002</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_10V_to_J5001-T5002</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3C23D1A4-240A-4D76-9C6E-CA6E19DC0B89}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_10V_to_J5001-T5002.exe</Property>
			</Item>
			<Item Name="Apply_17V_to_VBAT" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{74ACA275-E8B0-4230-B8F5-E2D7A16AEE04}</Property>
				<Property Name="App_INI_GUID" Type="Str">{37AFBF55-3387-474F-9AC8-DBC70C72795C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E537D38F-8023-462F-B2F0-7DA57DA96C48}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{16203FBD-CD86-4293-A283-DE1BFDC486AD}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">15</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_17V_to_VBAT.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_17V_to_VBAT.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Apply_17V_to_VBAT.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B7F43AE0-F64D-4264-A7BF-61627DE396F7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_17V_to_VBAT.exe</Property>
			</Item>
			<Item Name="Apply_19V_to_VBAT" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{8A9E5D02-E94D-4C56-BDCA-5190B3F932AE}</Property>
				<Property Name="App_INI_GUID" Type="Str">{69C0AAD6-A52C-45D5-82CF-A5877094944D}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{061442B5-F9BC-450B-ACAA-97709A2CF422}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Apply_19V_to_VBAT</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{BCFA5FE8-4CC7-4F81-B2E1-37070318B08E}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">13</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_19V_to_VBAT.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Apply_19V_to_VBAT.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Apply_17V_to_VBAT.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Apply_19V_to_VBAT.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_internalName" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Apply_17V_to_VBAT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B092B567-27D9-48D2-9601-34C3A50438B7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_19V_to_VBAT.exe</Property>
			</Item>
			<Item Name="Set_J17Low-J18High" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{72E72449-BEE4-4E7B-B937-49340D731FF8}</Property>
				<Property Name="App_INI_GUID" Type="Str">{93BD10B1-C8C0-4BF6-9C19-1807CC56AEB4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B63C77C9-80FC-4B25-9BB0-1F79C8A46DE6}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_J17Low-J18High</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{97B595C3-78D5-4568-BD19-AD2CEB13AA84}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">27</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_J17Low-J18High.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Set_J17Low-J18High.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D149E80F-DDF3-4FDB-AD86-4DA9CC667C4B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_J17High-J18Low.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Set_J17Low-J18High.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_J17Low-J18High</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_J17Low-J18High</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_J17Low-J18High</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F2E11DCD-4B2C-46F9-BDD4-15E625B3707D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_J17Low-J18High.exe</Property>
			</Item>
			<Item Name="Set_J17High-J18Low" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{777FB5A7-9478-4F7B-818C-3031900D2825}</Property>
				<Property Name="App_INI_GUID" Type="Str">{25D8623A-B362-47C5-B5BD-62A04FA82CDA}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C0871C8D-DCD5-488E-A3A5-8C59BFCD386B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_J17High-J18Low</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{105E7518-2028-4D59-AE1D-EF19B2EC06FB}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">21</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_J17High-J18Low.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Set_J17High-J18Low.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D149E80F-DDF3-4FDB-AD86-4DA9CC667C4B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_J17Low-J18High.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Set_J17High-J18Low.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_J17High-J18Low</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_J17High-J18Low</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_J17High-J18Low</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{6EA7D814-C312-4A76-8C05-BCD66DD22F8A}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_J17High-J18Low.exe</Property>
			</Item>
			<Item Name="No Trip Tests at 120mA" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{FC920543-D25F-4FB4-B3F6-4E4B8C1A5D28}</Property>
				<Property Name="App_INI_GUID" Type="Str">{B59394FB-9633-45BA-B7F6-13056822D004}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A3FEB258-1BF7-491C-BBC3-DCA37963711C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">No Trip Tests at 120mA</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{B3582F9B-DEC8-4511-A047-8BDE88428DC7}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">58</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">No_Trip_Tests_at_120mA.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/No_Trip_Tests_at_120mA.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{7E2165E6-D92C-4C88-900E-41FC2F44FE2F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Remove Dead Short.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/No Trip Tests at 120mA.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Low Over Current Test 1</Property>
				<Property Name="TgtF_internalName" Type="Str">Low Over Current Test 1</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Low Over Current Test 1</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{30D2B5C9-0DFD-4897-A892-AC21A27950E9}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">No_Trip_Tests_at_120mA.exe</Property>
			</Item>
			<Item Name="Test Trips at 250mA" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{31D6377B-7084-44A0-9CAE-D0C6161C9DF7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{28F5FD0B-3953-4F8E-8595-85A80FF73419}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2C3DB7D3-2182-43E9-8FD4-301835288128}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Test Trips at 250mA</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{00DA9127-CEA6-4E8F-BB4E-1CACE6D00D4C}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">40</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Test_Trips_at_250mA.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Test_Trips_at_250mA.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Remove Dead Short.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Test Trips at 250mA.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Test Trips at 250mA</Property>
				<Property Name="TgtF_internalName" Type="Str">Test Trips at 250mA</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Test Trips at 250mA</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{08347C34-0F12-449C-B1AB-C04320D87C57}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Test_Trips_at_250mA.exe</Property>
			</Item>
			<Item Name="2.5A_Test" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3F51BAE5-ED19-43EC-8652-FDB4A649FC51}</Property>
				<Property Name="App_INI_GUID" Type="Str">{85754071-0D78-4543-A4A5-9D7B968621E9}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E01F21E2-8EF9-4792-94E4-3929D34E9520}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">2.5A_Test</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{135AADA1-3D98-4290-ABC7-4EAE62BAD3EE}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">35</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_2.5A_Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Apply_2.5A_Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{C88E2BF0-841B-419B-B494-BBD656CE1500}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{1B240FD5-B17E-44FF-A90D-0C20AA67BC20}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{8768503B-B0EA-46D9-A160-73905E268AE1}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{2A5D9F2A-D63B-4DE0-AAEB-897D3E69C948}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{8FBFFAC3-BC9D-4C07-8131-177ADFAC203B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{228EE2CE-5BC6-4ED1-8FC1-95D3DDB216FB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{6AEA8B24-0E22-46C4-A94C-70034000AD5F}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{E808F81A-C79C-44D0-BC2C-427DEAC4BB21}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{C3B0CD82-5141-48CA-A3EB-22CBB3508816}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{F94CA69F-865D-4C8D-943C-5288365ED7BD}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{E57C6168-DAC3-4805-8AF9-F229D4858D70}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{6AE36A0B-8CA1-4298-AE2A-9D7FD9B0A3B6}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{F20A837F-E63A-45E9-B829-BE45F878DBBC}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{AD77330D-4426-4721-9021-FADD0DACDAD3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{A326E304-40E1-4228-B5CF-580C92212F59}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{C05A696D-C463-4DD4-80C0-ED5A8818EC84}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{B501089E-D21E-444C-AE73-0299F6BF5421}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{8372A541-68D0-4BC9-883D-99401AF80D1F}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{327ECEDF-9521-41EE-809F-D42E6AEF89D5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{B6DFF4F1-F2B2-4419-B3E5-404196A365AA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{0A9C98FB-F2E1-436F-814C-8790FA05C327}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{81B27E47-9D91-455E-B0BD-C46C65E5F9EA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{B5F92B74-F101-44C4-A2BD-A98F336B6096}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{C3751C32-6E34-4139-B83F-5D12E0DCB6C7}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{E239DF6D-D8A2-4099-8A4E-DB25012221C5}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{8F4C1B59-EF5F-4FD7-9A62-11726549CAEA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{767325F2-9472-40B3-9FA5-5FEC7C521DBA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{CBE70925-E188-495C-9A60-F77A29E1D671}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{22BDE22B-4507-413F-B738-5190F9A7F17B}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{32C4EBE4-F769-4DD9-B4F6-A0405EAF0F32}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{18A24C6D-8ADF-405F-86E9-1F2CA4E17BAF}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">Apply25ATest</Property>
				<Property Name="Exe_actXServerName" Type="Str">Apply25ATest</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str"></Property>
				<Property Name="Source[0].itemID" Type="Str">{5FA03AA5-E501-4DC9-B25D-B44BFDCDDA47}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Remove Dead Short.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/2.5A_Test.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">2.5A_Test</Property>
				<Property Name="TgtF_internalName" Type="Str">2.5A_Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">2.5A_Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{04602CF2-84E5-4F62-A623-42FBBBF64844}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_2.5A_Test.exe</Property>
			</Item>
			<Item Name="1.7A_Test" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E83E43F3-8E36-4354-AC88-75E2B2FC14D0}</Property>
				<Property Name="App_INI_GUID" Type="Str">{348E6ED9-D982-4753-864B-4E9E2340D17B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{FDC25367-FA16-4386-A8BA-69967A410F87}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">1.7A_Test</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{429AD815-B6F6-4700-B0C7-C61277FD8059}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">36</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Apply_1.7A_Test.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Apply_1.7A_Test.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_actXinfo_enumCLSID[0]" Type="Str">{C80A84E6-67B7-4204-AD0D-54F34DF611D3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[1]" Type="Str">{FD05A6DE-0AF2-4E6A-8764-F67E0ADC72A3}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[10]" Type="Str">{7630BABF-7485-4E61-9BC2-28BF6FDBC836}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[11]" Type="Str">{F8A8DFDC-E8B2-4249-938D-AE76EC29C5CB}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[12]" Type="Str">{8F5AEA89-34F2-40C8-AAC8-4B57A4A57506}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[13]" Type="Str">{E5A68F76-1515-40D6-AB19-883A153835D5}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[14]" Type="Str">{4FA38EE8-AD3C-4016-B80E-48ED25F2550F}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[15]" Type="Str">{7F5D9DB5-861F-43F7-BC08-A7760C343F64}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[16]" Type="Str">{457A533D-8574-41FF-A8C5-D70232947E1D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[2]" Type="Str">{8F7712F1-3B8C-4F58-825D-6A6539D02CEA}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[3]" Type="Str">{2A20E4F8-EB83-40AB-AD13-DC1BD6E19275}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[4]" Type="Str">{D2700585-57F1-402A-A223-C9197B7CCD6E}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[5]" Type="Str">{D41CF148-DFDC-456F-B320-3554DBF2A936}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[6]" Type="Str">{F228A141-0FF8-4FDB-845C-35C6D750B536}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[7]" Type="Str">{D73BE9CA-D95B-412E-928B-E5B516DFB83B}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[8]" Type="Str">{7AB2D2BF-9651-4442-A104-409C4E28993D}</Property>
				<Property Name="Exe_actXinfo_enumCLSID[9]" Type="Str">{B26A1400-3DAC-44F8-B8B6-16CF17B20D1A}</Property>
				<Property Name="Exe_actXinfo_enumCLSIDsCount" Type="Int">17</Property>
				<Property Name="Exe_actXinfo_majorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_minorVersion" Type="Int">5</Property>
				<Property Name="Exe_actXinfo_objCLSID[0]" Type="Str">{34F4A362-C4EC-42E2-9754-7E5599E6A292}</Property>
				<Property Name="Exe_actXinfo_objCLSID[1]" Type="Str">{A5D75314-32D4-4A93-977A-CF95EF49CA51}</Property>
				<Property Name="Exe_actXinfo_objCLSID[10]" Type="Str">{D0DBAD3D-E2FD-495B-83C8-F8DA6937D387}</Property>
				<Property Name="Exe_actXinfo_objCLSID[11]" Type="Str">{00503A1C-8FC1-437F-84DC-89B6C80D789A}</Property>
				<Property Name="Exe_actXinfo_objCLSID[12]" Type="Str">{A0C79320-69E1-493B-8B86-519043449AA0}</Property>
				<Property Name="Exe_actXinfo_objCLSID[13]" Type="Str">{FFCF10F6-F7A4-4F3B-85E4-60E98878C9F4}</Property>
				<Property Name="Exe_actXinfo_objCLSID[2]" Type="Str">{AA45E493-1658-4EED-8C21-5AAD13729268}</Property>
				<Property Name="Exe_actXinfo_objCLSID[3]" Type="Str">{3E21F714-A778-4DD5-988B-6DC196A49C32}</Property>
				<Property Name="Exe_actXinfo_objCLSID[4]" Type="Str">{3421FA4F-4180-499E-A700-B5A5FFB547D7}</Property>
				<Property Name="Exe_actXinfo_objCLSID[5]" Type="Str">{2A7A07DE-9FFF-43AB-B526-720AD018FA6A}</Property>
				<Property Name="Exe_actXinfo_objCLSID[6]" Type="Str">{FE394312-A657-4545-B75C-4236699F60BA}</Property>
				<Property Name="Exe_actXinfo_objCLSID[7]" Type="Str">{D1772922-DC69-45FB-9151-CE8038157838}</Property>
				<Property Name="Exe_actXinfo_objCLSID[8]" Type="Str">{890B0215-4950-49B4-8862-7895229717FE}</Property>
				<Property Name="Exe_actXinfo_objCLSID[9]" Type="Str">{E093A275-9251-4BA8-8E0C-D4B3A386EB35}</Property>
				<Property Name="Exe_actXinfo_objCLSIDsCount" Type="Int">14</Property>
				<Property Name="Exe_actXinfo_progIDPrefix" Type="Str">Apply17ATest</Property>
				<Property Name="Exe_actXServerName" Type="Str">Apply17ATest</Property>
				<Property Name="Exe_actXServerNameGUID" Type="Str"></Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/1.7A_Test.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">1.7A_Test</Property>
				<Property Name="TgtF_internalName" Type="Str">1.7A_Test</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">1.7A_Test</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{87BD6D9B-22E4-4FD0-939F-E7E573107074}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Apply_1.7A_Test.exe</Property>
			</Item>
			<Item Name="Over Current Dead Short to VBAT" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{2F4D4AA7-04BB-4BB9-9757-CC9F390C38C1}</Property>
				<Property Name="App_INI_GUID" Type="Str">{EF77C319-BE04-418B-913E-3E12B301D756}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CA08627A-1967-4C32-9CB9-A98869D8F6EB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Over Current Dead Short to VBAT</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{74894954-77A1-460E-A848-5C5576F2CF43}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">31</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Over_Current_Dead_Short_to_VBAT.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Over_Current_Dead_Short_to_VBAT.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Remove Dead Short.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Over Current Dead Short to VBAT.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Over Current Dead Short to VBAT</Property>
				<Property Name="TgtF_internalName" Type="Str">Over Current Dead Short to VBAT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Over Current Dead Short to VBAT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{555731EA-2EB5-48B5-B654-0A9E1F0B6B4B}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Over_Current_Dead_Short_to_VBAT.exe</Property>
			</Item>
			<Item Name="Shutdown_PS1" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{BFFD3327-B5BB-454F-9F66-CEDBD55C5C45}</Property>
				<Property Name="App_INI_GUID" Type="Str">{336ECBF3-0800-4325-92CB-41681BFA3926}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{FE54FB19-79C2-4B5B-82C7-88D0ECE5F526}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Shutdown_PS1</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{6CBAC756-C6BB-437A-B215-0ECE09C079C8}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">17</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Shutdown_PS1.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Shutdown_PS1.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{68B5D432-1244-4D9A-BDFA-00CBC128F18F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Shutdown_PS1.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Shutdown_PS1</Property>
				<Property Name="TgtF_internalName" Type="Str">Shutdown_PS1</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Shutdown_PS1</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{EB3755A0-45B8-4498-9A6E-9626DACDBE86}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Shutdown_PS1.exe</Property>
			</Item>
			<Item Name="Shutdown_PS2" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1CC763DB-246D-4B60-9088-E4809512F76F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{9CDF69D4-2DB1-461B-AA51-8163530E7DB8}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{634D04F1-6615-4D16-AA28-BA57CEE5E234}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Shutdown_PS2</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{01AC144C-C33D-46AB-8F72-C847FA24062C}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">17</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Shutdown_PS2.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Shutdown_PS2.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{68B5D432-1244-4D9A-BDFA-00CBC128F18F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Shutdown_PS1.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Shutdown_PS2.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Shutdown_PS2</Property>
				<Property Name="TgtF_internalName" Type="Str">Shutdown_PS2</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Shutdown_PS2</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{145C16FD-9B3D-4332-ADDE-598AD9BDEB19}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Shutdown_PS2.exe</Property>
			</Item>
			<Item Name="Remove Dead Short" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{61A5E561-9CB9-4BCB-96DF-65096BA4582F}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E567874F-AFEB-448F-BD99-8CCD61446E6E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{94CCB6CB-A3F9-4E42-825F-10CFB03D16A2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Remove Dead Short</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{ED627B7E-CCE8-43E9-8E10-3010856BC7EA}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">29</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Remove_Dead_Short.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/Remove_Dead_Short.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/ModisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{607C231A-9A0D-44FA-9AF8-F48761E950DF}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Remove Dead Short.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Remove Dead Short</Property>
				<Property Name="TgtF_internalName" Type="Str">Remove Dead Short</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Remove Dead Short</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{C251067F-0A5D-4A50-A18F-7B6AD6DACC3E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Remove_Dead_Short.exe</Property>
			</Item>
			<Item Name="Measure_VCOM" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{23606E06-9DDE-494E-92E5-9F69F41E05B5}</Property>
				<Property Name="App_INI_GUID" Type="Str">{6D63E8D3-2956-4433-BFA2-438EF5D6F92C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{92C9A575-8405-4866-948D-4EA99E7E5E90}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Measure_VCOM</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{DA2AFAA1-E8E7-49FC-A2D7-22E897555FAD}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">8</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Measure_VCOM.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Measure_VCOM.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Measure_VCOM.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Measure_VCOM</Property>
				<Property Name="TgtF_internalName" Type="Str">Measure_VCOM</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Measure_VCOM</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A5CD4741-4FCF-4D82-BD9C-DD72CF8AF5A0}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Measure_VCOM.exe</Property>
			</Item>
			<Item Name="Connect_PS1-_GND" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7082F929-20A8-4F43-8D17-AAE8283412D7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{122819F9-682F-4988-9928-0D6882D40952}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{C078FB2F-F8D9-47CC-9595-3226E1ADF635}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Connect_PS1-_GND</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{D948C22D-1541-4158-A707-3FA8695C0D03}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">11</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Connect_PS1-_GND.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Connect_PS1-_GND.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Connect_PS1-_GND.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Connect_PS1-_GND</Property>
				<Property Name="TgtF_internalName" Type="Str">Connect_PS1-_GND</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Connect_PS1-_GND</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{E14A91BC-021B-4B87-ACE6-C31D4F706E81}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Connect_PS1-_GND.exe</Property>
			</Item>
			<Item Name="Connect_PS1-_PS2+" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{50700F76-E76A-409E-BB66-7D4194353E43}</Property>
				<Property Name="App_INI_GUID" Type="Str">{43E574CD-503E-4E72-A913-676E4B823AC9}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7E987B61-A81A-4481-AA24-84D6246DB034}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Connect_PS1-_PS2+</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{3A0A5C77-BC28-4228-B997-56FD5028F34C}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">11</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Connect_PS1-_PS2+.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Connect_PS1-_PS2+.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Connect_PS1-_PS2+.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Connect_PS1-_PS2+</Property>
				<Property Name="TgtF_internalName" Type="Str">Connect_PS1-_PS2+</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Connect_PS1-_PS2+</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{026BF1F6-2163-487E-A8ED-B8AB28D3FEBA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Connect_PS1-_PS2+.exe</Property>
			</Item>
			<Item Name="Disconnect_PS1-_GND" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{734FD28A-35DA-49DD-BC84-3E5D9A4AFAF7}</Property>
				<Property Name="App_INI_GUID" Type="Str">{161B2FFC-8DD7-4ACA-AB51-009821B4C981}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AC00BD0F-7EE5-4813-A20B-DD153CD8DB4A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Disconnect_PS1-_GND</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{49707360-BC00-42AA-A28E-E437B3F4923F}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">11</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Disconnect_PS1-_GND.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Disconnect_PS1-_GND.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Disconnect_PS1-_GND.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Disconnect_PS1-_GND</Property>
				<Property Name="TgtF_internalName" Type="Str">Disconnect_PS1-_GND</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Disconnect_PS1-_GND</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A2A7149B-6861-4C69-B832-3BB599436940}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Disconnect_PS1-_GND.exe</Property>
			</Item>
			<Item Name="Disconnect_PS1-_PS2+" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{DA716B23-EA01-40C5-B24A-4D6183D17D8C}</Property>
				<Property Name="App_INI_GUID" Type="Str">{7F9338D1-FA86-433B-83E5-2DCBD2C44D84}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{4BD8474E-55BC-4CE4-AA68-2BD17E4CA2A8}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Disconnect_PS1-_PS2+</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{5F753B95-1D43-4148-81FB-9C96359E40C2}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">11</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Disconnect_PS1-_PS2+.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Disconnect_PS1-_PS2+.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{70F4BCE8-BFDA-4854-9915-5C73BC2A79F7}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Disconnect_PS1-_PS2+.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Disconnect_PS1-_PS2+</Property>
				<Property Name="TgtF_internalName" Type="Str">Disconnect_PS1-_PS2+</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Disconnect_PS1-_PS2+</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B55737EE-CF8B-4D61-AC77-BB993C669E16}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Disconnect_PS1-_PS2+.exe</Property>
			</Item>
			<Item Name="Set_PS1_15V_in_Series" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3C2C44DF-CCE9-4549-9999-D144AB2EBDA1}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0582249D-85CA-49D2-9E9E-AF8AB06A9D51}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{0C13231A-D117-44AA-9EC0-9B04375788E2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_PS1_15V_in_Series</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{66507D77-E334-450C-99AE-53FBBB7E894A}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">21</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_PS1_15V_in_Series.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Set_PS1_15V_in_Series.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{04A9ECBC-6E4B-4551-9F50-4AD96045CE44}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_PS1_15V_in_Series.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_PS1_15V_in_Series</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_PS1_15V_in_Series</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_PS1_15V_in_Series</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D3F3DA8D-C8F8-4FD9-BEC4-02D4282C7E89}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_PS1_15V_in_Series.exe</Property>
			</Item>
			<Item Name="Set_PS2_16V" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{E5C5FED0-FBC3-40C4-8E5C-B026B88C4A06}</Property>
				<Property Name="App_INI_GUID" Type="Str">{BCC1EA3D-49CF-4F4D-AC2B-EE4A58FC735B}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{26696080-ACBD-4A88-AB25-5A36D73FDFAB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_PS2_16V</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0CD49ABC-ABE5-42B5-915A-0C2654DA3F4B}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">15</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_PS2_16V.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Set_PS2_16V.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{04A9ECBC-6E4B-4551-9F50-4AD96045CE44}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_PS2_16V.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_PS2_16V</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_PS2_16V</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_PS2_16V</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{99916150-B2EB-4845-B706-A2617BADEF58}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_PS2_16V.exe</Property>
			</Item>
			<Item Name="Set_PS2_18V" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{7DD00A3C-511E-4DCF-9132-F00B3F24C23D}</Property>
				<Property Name="App_INI_GUID" Type="Str">{0121B4B7-A0A8-4025-8E77-5DC2D1ED09F2}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{218B475C-5CA1-493C-BC65-DC60833DA69C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_PS2_18V</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8CE69C77-D908-4425-98FD-D509AC1D10C6}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">16</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_PS2_18V.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Set_PS2_18V.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{04A9ECBC-6E4B-4551-9F50-4AD96045CE44}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_PS2_18V.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_PS2_18V</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_PS2_18V</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_PS2_18V</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3AA721D5-FA36-4697-876A-573E5B6E01DA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_PS2_18V.exe</Property>
			</Item>
			<Item Name="Set_PS1_15V_independent" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A00E9A7A-6434-4943-9F7E-FDB680C51EDF}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F53C165A-AC8D-48B9-9C77-EC54119CB09C}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SSP.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{15705298-24F1-4180-88B8-19350620B01C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Set_PS1_15V_independent</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F44E87E8-DC68-4040-8ACF-94F9E3D9E9E7}</Property>
				<Property Name="Bld_supportedLanguage[0]" Type="Str">English</Property>
				<Property Name="Bld_supportedLanguageCount" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">14</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Set_PS1_15V_independent.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Set_PS1_15V_independent.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{04A9ECBC-6E4B-4551-9F50-4AD96045CE44}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Set_PS1_15V_independent.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Set_PS1_15V_independent</Property>
				<Property Name="TgtF_internalName" Type="Str">Set_PS1_15V_independent</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Set_PS1_15V_independent</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{47372FBF-4433-4192-B8C1-9B885DFA0BA1}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Set_PS1_15V_independent.exe</Property>
			</Item>
			<Item Name="Disconnect_Voltage_Reference_from_UUT_set_PS1_15V" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{3BD27F34-7C06-4C08-A0C1-7126EB9C5987}</Property>
				<Property Name="App_INI_GUID" Type="Str">{FE3C366B-FC3E-4369-918B-CD792BC1B911}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{579016F7-21B7-41C2-BF98-3CB1EB26585E}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{EE8614F0-29D2-403A-94F9-9B9A36D4ADBE}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.exe</Property>
				<Property Name="Destination[0].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/modisEdge/Scanner/Test Sequence/TestScripts/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{7E2165E6-D92C-4C88-900E-41FC2F44FE2F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Disconnect_Voltage_Reference_from_UUT.vi</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">SSP</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V</Property>
				<Property Name="TgtF_internalName" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2016 SSP</Property>
				<Property Name="TgtF_productName" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{FF14DA41-48F0-40D0-A979-E47068CCC68D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Disconnect_Voltage_Reference_from_UUT_set_PS1_15V.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
