//Maya ASCII 2017 scene
//Name: bar.ma
//Last modified: Tue, Nov 07, 2017 10:08:06 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "VRaySettingsNode" -nodeType "VRaySunShape" -nodeType "VRaySunTarget"
		 -nodeType "VRayGeoSun" -nodeType "VRaySky" -nodeType "VRayLightRectShape" -nodeType "VRayMtl"
		 -nodeType "VRayRTChangeDetector" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "3.60.02";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "1.3.0.0";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
fileInfo "vrayBuild" "3.60.02 9622c60";
createNode transform -s -n "persp";
	rename -uid "F44031B7-4BEE-D72A-FFCB-AF9054D1C68B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.90422381719694345 4.7836851112054175 -11.031084721736953 ;
	setAttr ".r" -type "double3" 0.86164727039999189 -149.79999999999728 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "47344FB1-4D04-D3D8-221E-B89F7C33C784";
	addAttr -ci true -sn "vraySeparator_vray_cameraPhysical" -ln "vraySeparator_vray_cameraPhysical" 
		-dt "string";
	addAttr -ci true -sn "vrayCameraPhysicalOn" -ln "vrayCameraPhysicalOn" -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalType" -ln "vrayCameraPhysicalType" -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFilmWidth" -ln "vrayCameraPhysicalFilmWidth" 
		-dv 36 -min 0 -smx 135 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalFocalLength" -ln "vrayCameraPhysicalFocalLength" 
		-dv 40 -min 0 -smx 100 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalSpecifyFOV" -ln "vrayCameraPhysicalSpecifyFOV" 
		-dv 2 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFOV" -ln "vrayCameraPhysicalFOV" -dv 90 
		-min 9.9999997473787516e-005 -smx 180 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalZoomFactor" -ln "vrayCameraPhysicalZoomFactor" 
		-dv 1 -min 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionType" -ln "vrayCameraPhysicalDistortionType" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalDistortion" -ln "vrayCameraPhysicalDistortion" 
		-min -1 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensFile" -ln "vrayCameraPhysicalLensFile" 
		-dt "string";
	addAttr -ci true -uac -sn "vrayCameraPhysicalDistortionMap" -ln "vrayCameraPhysicalDistortionMap" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapr" -ln "vrayCameraPhysicalDistortionMapR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapg" -ln "vrayCameraPhysicalDistortionMapG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapb" -ln "vrayCameraPhysicalDistortionMapB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalFNumber" -ln "vrayCameraPhysicalFNumber" 
		-dv 8 -min 0 -smx 32 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalHorizLensShift" -ln "vrayCameraPhysicalHorizLensShift" 
		-min -1000000 -max 1000000 -smn -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensShift" -ln "vrayCameraPhysicalLensShift" 
		-min -1000000 -max 1000000 -smn -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensAutoVShift" -ln "vrayCameraPhysicalLensAutoVShift" 
		-dt "string";
	addAttr -ci true -sn "vrayCameraPhysicalShutterSpeed" -ln "vrayCameraPhysicalShutterSpeed" 
		-dv 200 -min 0 -smx 1000 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalShutterAngle" -ln "vrayCameraPhysicalShutterAngle" 
		-dv 180 -min 0 -max 360 -smn 0 -smx 360 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalShutterOffset" -ln "vrayCameraPhysicalShutterOffset" 
		-min -360 -max 360 -smn 0 -smx 360 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLatency" -ln "vrayCameraPhysicalLatency" 
		-min 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalISO" -ln "vrayCameraPhysicalISO" -dv 100 
		-min 0 -smx 400 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalSpecifyFocus" -ln "vrayCameraPhysicalSpecifyFocus" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFocusDistance" -ln "vrayCameraPhysicalFocusDistance" 
		-dv 200 -min 0.0099999997764825821 -smx 400 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalExposure" -ln "vrayCameraPhysicalExposure" 
		-dv 1 -at "long";
	addAttr -ci true -uac -sn "vrayCameraPhysicalWhiteBalance" -ln "vrayCameraPhysicalWhiteBalance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalancer" -ln "vrayCameraPhysicalWhiteBalanceR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalanceg" -ln "vrayCameraPhysicalWhiteBalanceG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalanceb" -ln "vrayCameraPhysicalWhiteBalanceB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalVignetting" -ln "vrayCameraPhysicalVignetting" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalVignettingAmount" -ln "vrayCameraPhysicalVignettingAmount" 
		-dv 1 -min 0 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalBladesEnable" -ln "vrayCameraPhysicalBladesEnable" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalBladesNum" -ln "vrayCameraPhysicalBladesNum" 
		-dv 5 -min 0 -smx 16 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalBladesRotation" -ln "vrayCameraPhysicalBladesRotation" 
		-min 0 -smx 6.2800002098083496 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalCenterBias" -ln "vrayCameraPhysicalCenterBias" 
		-min -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalAnisotropy" -ln "vrayCameraPhysicalAnisotropy" 
		-min -1 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalUseDof" -ln "vrayCameraPhysicalUseDof" -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalUseMoBlur" -ln "vrayCameraPhysicalUseMoBlur" 
		-at "long";
	addAttr -ci true -uac -sn "vrayCameraPhysicalApertureMap" -ln "vrayCameraPhysicalApertureMap" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapr" -ln "vrayCameraPhysicalApertureMapR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapg" -ln "vrayCameraPhysicalApertureMapG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapb" -ln "vrayCameraPhysicalApertureMapB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapAffectsExposure" -ln "vrayCameraPhysicalApertureMapAffectsExposure" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalOpticalVignetting" -ln "vrayCameraPhysicalOpticalVignetting" 
		-smn -3 -smx 3 -at "float";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.430573582499274;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 14.700200355398923 11.009311954922985 -12.608991561462506 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
	setAttr ".vraySeparator_vray_cameraPhysical" -type "string" "";
	setAttr ".vrayCameraPhysicalLensFile" -type "string" "";
	setAttr ".vrayCameraPhysicalLensAutoVShift" -type "string" "vrayOnCameraPhysicalAutoVShift";
createNode transform -s -n "top";
	rename -uid "1198DF6F-47BE-E681-B152-E7A963F517C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AC62E845-47F7-7BC2-EF55-30A4F784A66F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E3AE7FBF-4F9E-12A6-9C4C-49BE22EDF7F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 9.0183105176562179 1000.1406600696688 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "15EBE568-4D5F-711F-EA02-A3AA715AC815";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1406600696688;
	setAttr ".ow" 23.560415453889878;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 9.0183105176562179 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "8C70DA6D-4491-4AE4-E7A8-5F8B1AB1D7C3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E907F934-4E11-DE26-D267-ACAABEBEA67C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "62B26936-4C26-AC3B-4FB4-CFAC17959C17";
	setAttr ".t" -type "double3" 0 6.6132423159839844 0 ;
	setAttr ".s" -type "double3" 29.400390196398963 11.743567784435479 29.400390196398963 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "90474C35-4DB6-D912-240B-30B2D8F8A8F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "VRayGeoSun1Transform";
	rename -uid "B0FB7B98-4607-5550-C037-FB9DA62E8DCA";
createNode VRaySunTarget -n "VRaySunTarget1" -p "VRayGeoSun1Transform";
	rename -uid "31B5FBD5-4CBB-541D-EB39-9699EC76B0E1";
	setAttr -k off ".v";
createNode VRayGeoSun -n "VRayGeoSun1" -p "VRayGeoSun1Transform";
	rename -uid "CBA4990A-4B0A-A516-44A1-058DDC15BED8";
	setAttr ".t" -type "double3" 68.287391294907636 37.117121638094957 4.2412882736119784 ;
	setAttr ".gyear" 2017;
	setAttr ".gmonth" 11;
	setAttr ".gday" 7;
	setAttr ".gdvalue" 311;
	setAttr ".gtvalue" 12;
createNode VRaySunShape -n "VRaySunShape1" -p "VRayGeoSun1";
	rename -uid "49E75F8C-4E14-3DF5-CBD8-6BA2902F5C1B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".intens" 0.13333334028720856;
	setAttr ".turb" 2.5;
	setAttr ".skymod" 3;
	setAttr ".dir" -type "float3" 0.87729549 0.47684765 0.054488286 ;
	setAttr ".aal" -type "attributeAlias" {"filterColor","color","intensityMult","intensity"
		,"shadows","useRayTraceShadows"} ;
createNode transform -n "VRayLightRect1";
	rename -uid "9AB09AF1-4914-44AE-1A00-6B95DB153051";
	setAttr ".t" -type "double3" 17.699842282874641 6.6092771904380179 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 15.049728248012521 7.2526672710108118 1 ;
createNode VRayLightRectShape -n "VRayLightRectShape1" -p "VRayLightRect1";
	rename -uid "D2DAC1B0-40A5-E0E2-10EA-718490951136";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".intens" 13.888889312744141;
	setAttr ".inv" yes;
	setAttr ".afr" no;
	setAttr ".aal" -type "attributeAlias" {"lightColor","color","intensityMult","intensity"
		,"shadows","useRayTraceShadows"} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B8EC8EC9-44DA-D94E-4663-0092AD6D5683";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B41A1BED-4215-6227-A034-4BA94B772D91";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0AD69D20-4837-3353-3C81-4394233BA7A1";
createNode displayLayerManager -n "layerManager";
	rename -uid "8CE4CA0F-4E07-2D2D-4070-E592414ABAEE";
createNode displayLayer -n "defaultLayer";
	rename -uid "7CCBDE87-4621-A859-4419-74808790FBCF";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "57EA31F7-4C9D-9CD8-3B66-53B9CB93B541";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A0F0543C-4930-CF7D-A639-6D9121F34138";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "18937979-4393-0038-F23A-85B5139CB3AF";
	setAttr ".version" -type "string" "1.3.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "9FD11B13-4255-ABC6-6AEC-829F03DB106D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "F029D873-4508-37CF-D24A-30B91F7B83C6";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "7172C93E-42AA-3A44-CDE2-048E865F0D02";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "CA0670B9-4363-672F-2483-719EC9D8E8DB";
	setAttr ".gi" yes;
	setAttr ".pe" 2;
	setAttr ".cmph" 60;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dam" 1;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 40;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".imcp" 1;
	setAttr ".iminr" -4;
	setAttr ".imaxr" -3;
	setAttr ".isds" 30;
	setAttr ".icts" 0.4;
	setAttr ".ints" 0.3;
	setAttr ".imode" 2;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".caoet" yes;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" 1;
	setAttr ".srflc" 1;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 960;
	setAttr ".he" 540;
	setAttr ".aspr" 1.7777780294418335;
	setAttr ".productionEngine" 2;
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".bkc" -type "string" "map1";
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 253 1006 16 448 317 998 549
		 448 317 810 440 -1073724351 1 835 240 0 -1920 -1080 960
		 540 1023 0 -1073741824 0 -1073741824 0 1072693248 0 1072693248 1 890
		 1 3 1 0 0 0 0 1 0 5 0 1065353216
		 3 1 0 0 0 0 1 0 5 0 1065353216 3
		 1 1065353216 0 0 0 1 0 5 0 1065353216 1 3
		 2 1065353216 1065353216 1065353216 1065353216 1 0 5 0 0 0 0
		 1 0 5 0 1065353216 1 137531 65536 1 1313131313 65536 944879383
		 0 -525502228 1065353216 1621981420 1034594987 1057896675 1065353216 2 0 0 -1097805629 -1097805629
		 1049678019 1049678019 0 2 1065353216 1065353216 -1097805629 -1097805629 1049678019 1049678019 0 2
		 1 2 -1 0 0 0 1869047123 1230315621 168430080 1628077322 1769108596 1702131042
		 2020175904 1968139365 175841396 878929270 1819239200 1968140911 1329805940 810700620 175966779 1920234593 1953849961 1398153317
		 1599034463 2064274256 168430090 1952516733 1651077748 543519861 1331647303 16777215 0 70 1 32
		 53 1632775510 1868963961 1632444530 622879097 2036429430 1936876918 544108393 1701978236 1919247470 1835627552 1915035749
		 1701080677 1835627634 12901 1378702848 1713404257 1293972079 543258977 808857139 540160046 1701978236 1919247470 1835627552
		 807411813 824189032 874520685 7550254 16777216 16777216 0 0 0 0 1 1
		 0 0 0 0 1 1 0 0 11 1936614732 1701209669 7566435
		 1 0 1 0 1097859072 1097859072 1082130432 0 0 0 1077936128 0
		 0 0 1 0 2 1106247680 1092616192 1 0 0 0 0
		 82176 0 16576 16752 0 0 0 16448 0 65536 65536 65536
		 0 0 0 65536 0 0 0 0 0 0 0 0
		 0 0 0 0 65536 536870912 536888779 ;
	setAttr ".mSceneName" -type "string" "D:/cs22_tutorials/scenes/bar.ma";
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
createNode renderSetup -n "renderSetup";
	rename -uid "BD5ACB1F-439C-B882-9B2E-2092E9C81BA2";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "48CD66B1-43AE-E349-1F8C-549E098E9CED";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 691\n                -height 328\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 691\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 690\n                -height 327\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 690\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 691\n                -height 327\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 691\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1588\n                -height 700\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1588\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1588\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1588\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C4F736F4-4CDB-9576-B08C-5A9335FC8C7A";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode VRayMtl -n "VRayMtl1";
	rename -uid "EE1FDBB1-43E9-5C98-AB4E-5A9C6EAD0373";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".ggxog" no;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "VRayMtl1SG";
	rename -uid "2E027F64-4E6D-BF97-5EF7-BA80B0901684";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "870AE8F0-4D43-C3C4-A4DC-73A4BB621D1B";
createNode script -n "VRayQuickSettings";
	rename -uid "F96FEA85-4EC0-F53C-09AF-66BDA8DDE9A1";
	addAttr -ci true -sn "vrayVerified" -ln "vrayVerified" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "globalQuickPreset" -ln "globalQuickPreset" -dv 1 -min 1 -at "short";
	addAttr -ci true -sn "GIPreset" -ln "GIPreset" -dv 1 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "GIPreset2" -ln "GIPreset2" -dv 2 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "GIPreset3" -ln "GIPreset3" -dv 4 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "GIPreset4" -ln "GIPreset4" -dv 1 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "GIPreset5" -ln "GIPreset5" -dv 3 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "GISlider" -ln "GISlider" -min 0 -max 32 -at "short";
	addAttr -ci true -sn "GISlider2" -ln "GISlider2" -min 0 -max 32 -at "short";
	addAttr -ci true -sn "GISlider3" -ln "GISlider3" -min 0 -max 32 -at "short";
	addAttr -ci true -sn "GISlider4" -ln "GISlider4" -min 0 -max 32 -at "short";
	addAttr -ci true -sn "GISlider5" -ln "GISlider5" -min 0 -max 32 -at "short";
	addAttr -ci true -sn "BFsubdivs" -ln "BFsubdivs" -dv 8 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "BFLightBounces" -ln "BFLightBounces" -dv 3 -min 1 -max 200 
		-at "short";
	addAttr -ci true -sn "IMPreset" -ln "IMPreset" -dv 1 -min 1 -max 5 -at "short";
	addAttr -ci true -sn "IMsubdivs" -ln "IMsubdivs" -dv 30 -min 30 -max 150 -at "short";
	addAttr -ci true -sn "LCsubdivs" -ln "LCsubdivs" -dv 500 -min 500 -max 3000 -at "short";
	addAttr -ci true -sn "LCPrefilter" -ln "LCPrefilter" -dv 40 -min 20 -max 40 -at "short";
	addAttr -ci true -sn "LCRetrace" -ln "LCRetrace" -dv 2 -min 2 -max 8 -at "short";
	addAttr -ci true -sn "ShadingRate" -ln "ShadingRate" -dv 6 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "ShadingRate2" -ln "ShadingRate2" -dv 6 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "ShadingRate3" -ln "ShadingRate3" -dv 6 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "ShadingRate4" -ln "ShadingRate4" -dv 6 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "ShadingRate5" -ln "ShadingRate5" -dv 6 -min 1 -max 64 -at "short";
	addAttr -ci true -sn "AASlider" -ln "AASlider" -dv 8 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider21" -ln "AASlider21" -dv 24 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider31" -ln "AASlider31" -dv 24 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider41" -ln "AASlider41" -dv 24 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider51" -ln "AASlider51" -dv 24 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider22" -ln "AASlider22" -dv 100 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider32" -ln "AASlider32" -dv 100 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider42" -ln "AASlider42" -dv 100 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AASlider52" -ln "AASlider52" -dv 100 -min 1 -max 100 -at "short";
	addAttr -ci true -sn "AALimitBucket" -ln "AALimitBucket" -dv 25 -min 1 -max 100 
		-at "short";
	addAttr -ci true -sn "AALimitProgressive" -ln "AALimitProgressive" -dv 100 -min 
		1 -max 100 -at "short";
	addAttr -ci true -sn "AALimitSlider" -ln "AALimitSlider" -dv 50 -min 1 -max 100 
		-at "short";
	addAttr -ci true -sn "AALimitSlider21" -ln "AALimitSlider21" -dv 50 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider31" -ln "AALimitSlider31" -dv 50 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider41" -ln "AALimitSlider41" -dv 50 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider51" -ln "AALimitSlider51" -dv 50 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider22" -ln "AALimitSlider22" -dv 100 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider32" -ln "AALimitSlider32" -dv 100 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider42" -ln "AALimitSlider42" -dv 100 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "AALimitSlider52" -ln "AALimitSlider52" -dv 100 -min 1 -max 
		100 -at "short";
	addAttr -ci true -sn "SamplerType" -ln "SamplerType" -dv 1 -min 1 -max 2 -at "short";
	addAttr -ci true -sn "SamplerType2" -ln "SamplerType2" -dv 1 -min 1 -max 2 -at "short";
	addAttr -ci true -sn "SamplerType3" -ln "SamplerType3" -dv 1 -min 1 -max 2 -at "short";
	addAttr -ci true -sn "SamplerType4" -ln "SamplerType4" -dv 1 -min 1 -max 2 -at "short";
	addAttr -ci true -sn "SamplerType5" -ln "SamplerType5" -dv 1 -min 1 -max 2 -at "short";
	addAttr -ci true -sn "useVFB" -ln "useVFB" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".st" 2;
	setAttr ".globalQuickPreset" 2;
	setAttr ".GIPreset" 2;
	setAttr ".AASlider" 24;
	setAttr ".AALimitBucket" 50;
createNode VRayMtl -n "VRayMtl2";
	rename -uid "6D839127-46E3-5D39-D736-88BFB6EAE1F0";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".ggxog" no;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "VRayMtl2SG";
	rename -uid "F8E42F49-4BB0-29CE-1B08-3790D2CC7CCD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "F780D9C3-49D5-7ADA-9175-11B4F17E50CF";
createNode polyCube -n "polyCube1";
	rename -uid "40DC1705-4FAE-CA37-1594-679A3E6B3747";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "DAEA0032-457B-7A09-0DD0-5CBB62AA2A78";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".wt" 0.54864561557769775;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "9A882C6A-49E0-A51A-5BD4-859ECFC7E006";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:7]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".wt" 0.70600920915603638;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "BD950D75-45AE-3B74-19A5-7FBEDF0ECDC1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.093437925 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.093437925 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.093437925 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.093437925 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.093437925 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.093437925 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.093437925 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.093437925 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "18E62B3E-489B-3E05-8F7C-13B41B6FCBE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:13]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".wt" 0.65042304992675781;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "A15311F6-4471-9A29-AA50-7BBFD39AC141";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".wt" 0.45898675918579102;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "D54E22AA-4DE0-4486-8271-3C94E603E787";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[32:63]" -type "float3"  0 -0.20767187 0 0 -0.20767187
		 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0
		 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0
		 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 -0.20767187 0 0 0.20767187 0 0 0.20767187
		 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187
		 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187 0 0 0.20767187
		 0 0 0.20767187 0 0 0.20767187 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "D6418988-43C5-4E41-1E71-07846D099224";
	setAttr ".dc" -type "componentList" 1 "f[60]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E2720ADC-4105-6047-CB56-3C8B18819E05";
	setAttr ".dc" -type "componentList" 1 "f[58]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "EC7FF742-4E8C-8686-6AC3-E5BF05DCCE9F";
	setAttr ".dc" -type "componentList" 1 "f[56]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "BFFBA2D2-44E8-1FAC-DF2D-08998C4E2346";
	setAttr ".ics" -type "componentList" 9 "f[4]" "f[9]" "f[13]" "f[17]" "f[21]" "f[25]" "f[29]" "f[39:45]" "f[55:58]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 14.700195 6.6132421 0 ;
	setAttr ".rs" 40950;
	setAttr ".lt" -type "double3" 1.2798808871202708e-016 7.0589512059116e-017 0.57640710863134714 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 14.700195098199481 0.74145842376624493 -14.700195098199481 ;
	setAttr ".cbx" -type "double3" 14.700195098199481 12.485026208201724 14.700195098199481 ;
createNode VRaySky -n "VRaySky1";
	rename -uid "66683792-41CA-B52A-0D83-A1A738AF08E2";
	setAttr ".turb" 2.5;
	setAttr ".skymod" 3;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "F786CCDF-4A0A-D734-E28F-BA85C6EF1839";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[11]" "e[17]" "e[24]" "e[31]" "e[38]" "e[45]" "e[52]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 14.700197 0.74145842 0 ;
	setAttr ".rs" 35025;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 14.700196850599296 0.74145842376624493 -14.700196850599296 ;
	setAttr ".cbx" -type "double3" 14.700196850599296 0.74145842376624493 14.700196850599296 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E1A314D9-40CB-4038-F932-9F9D15D644D2";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[76]" -type "float2" 8.6020045e-005 4.1245571e-006 ;
	setAttr ".uvtk[77]" -type "float2" -9.6783209e-005 3.7119912e-006 ;
	setAttr ".uvtk[136]" -type "float2" -0.0020300935 0.57804859 ;
	setAttr ".uvtk[137]" -type "float2" 0.0023202079 0.5790416 ;
	setAttr ".uvtk[141]" -type "float2" 0.0024585621 0.5790416 ;
	setAttr ".uvtk[156]" -type "float2" -0.0024585633 0.5790416 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "4A424EE4-42D9-FD5C-CFF9-35864CE7E013";
	setAttr ".ics" -type "componentList" 2 "vtx[44:45]" "vtx[98:99]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak3";
	rename -uid "2878F6AB-4893-67A3-6E4B-35BDF2B54637";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078712702 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.078712702 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.12566149 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.12566149 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.078712702 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.078712702 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.078712702 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.078712702 0 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "F0625D20-4368-5715-91FF-77A584B31FA2";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[78]" -type "float2" 3.0381811e-005 4.124428e-006 ;
	setAttr ".uvtk[79]" -type "float2" -3.4187218e-005 3.7117336e-006 ;
	setAttr ".uvtk[132]" -type "float2" -0.0024585603 0.5790416 ;
	setAttr ".uvtk[152]" -type "float2" -0.0021509316 0.57804787 ;
	setAttr ".uvtk[153]" -type "float2" 0.0024585621 0.5790416 ;
	setAttr ".uvtk[157]" -type "float2" 0.0021509281 0.57804787 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "965ABF8D-4237-6439-8316-80BC0F9CBA6A";
	setAttr ".ics" -type "componentList" 3 "vtx[46:47]" "vtx[97]" "vtx[101]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak4";
	rename -uid "27E07D56-4B6A-97BF-2D37-0AAD39E3BFD3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.046948791 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.046948791 0 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "FBBC9D30-4A95-1D2F-31E5-5A8B89524FEE";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[74]" -type "float2" 3.0381796e-005 4.124428e-006 ;
	setAttr ".uvtk[75]" -type "float2" -3.4187204e-005 3.7117336e-006 ;
	setAttr ".uvtk[140]" -type "float2" -0.0021512441 0.57804787 ;
	setAttr ".uvtk[144]" -type "float2" -0.0021509319 0.57804787 ;
	setAttr ".uvtk[145]" -type "float2" 0.0024582502 0.5790416 ;
	setAttr ".uvtk[149]" -type "float2" 0.0024585621 0.5790416 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "B1637FA0-454E-B0CA-C9BF-7587146749CC";
	setAttr ".ics" -type "componentList" 2 "vtx[42:43]" "vtx[97:98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak5";
	rename -uid "043F936B-4971-AE94-08A2-91B81AF3E118";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.046948791 -4.4703484e-008 ;
	setAttr ".tk[98]" -type "float3" 0 0.046948791 0 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "A3C3FD34-4D85-BE5E-8858-548E0FADE043";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[73]" -type "float2" -0.0016457 -0.023677371 ;
	setAttr ".uvtk[148]" -type "float2" -0.0021509316 0.57804787 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "54B35292-4E33-ED53-873F-90B9D92C4A3B";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[97]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak6";
	rename -uid "93942A66-401B-BBB8-066C-45AF278A2ABD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.046948791 0 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "7D111338-4E2F-4BC8-E47C-6A8D23079686";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[62]" -type "float2" -6.2496847e-006 0.023676148 ;
	setAttr ".uvtk[63]" -type "float2" 3.1832315e-012 -0.023676137 ;
	setAttr ".uvtk[133]" -type "float2" 0.0021509239 0.57804787 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "C71F8F85-4385-3E2F-892B-C9A6EF8F05AF";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak7";
	rename -uid "BDD9DC17-4913-B16C-459F-9B963DDD8A4A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.046948791 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "48FFB5BF-4F93-2231-658C-1FACF07A76AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[189]" "e[193]" "e[195]" "e[197]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 14.700198 2.2171726 0 ;
	setAttr ".rs" 47784;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 14.700198602999109 2.2171726770449833 -14.700198602999109 ;
	setAttr ".cbx" -type "double3" 14.700198602999109 2.2171726770449833 14.700198602999109 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "0597D603-4D67-88C1-0A42-9285816D634D";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[94]" -type "float2" 0.00010629874 -3.2553373e-006 ;
	setAttr ".uvtk[165]" -type "float2" 0.0024585638 0.016765464 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "06767617-4063-8B8C-FD5A-499C3146F05A";
	setAttr ".ics" -type "componentList" 2 "vtx[60]" "vtx[98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak8";
	rename -uid "944553CA-4BE6-6C04-C434-CDBAB7E4A806";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.74867702 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.73626304 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.73626304 0 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "13DF68F3-4830-28F3-A43E-BE92808EF5BC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[95]" -type "float2" -9.5675365e-005 -3.6626996e-006 ;
	setAttr ".uvtk[172]" -type "float2" -0.0024585631 0.016765464 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "EF3025A3-45F0-E20C-95CE-B9B806093AB0";
	setAttr ".ics" -type "componentList" 2 "vtx[61]" "vtx[102]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak9";
	rename -uid "3FE02E5C-4659-7072-ABA7-69810A35FF7A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[102]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "E5B3FD92-4DAF-5D56-0733-94AE9C1A07A6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[93]" -type "float2" -3.7972306e-005 -3.3012395e-006 ;
	setAttr ".uvtk[164]" -type "float2" -0.0018414404 0.016742319 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "A5E5A8B2-4252-C715-548C-50A6EC486483";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak10";
	rename -uid "C279DC1E-4AA1-92EC-EBBA-18AEF54AD928";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "38CBE86C-46D0-0115-F762-24960CD93065";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[92]" -type "float2" 3.3327196e-005 -3.6230242e-006 ;
	setAttr ".uvtk[169]" -type "float2" 0.0024585612 0.016765464 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "544DCBC8-4D95-86C0-EA1E-36A51063986B";
	setAttr ".ics" -type "componentList" 2 "vtx[58]" "vtx[98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak11";
	rename -uid "0236329B-49A8-9B08-2E65-A78D9281FACC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "44A1B1F5-4C0E-C4B2-167C-89BD11A506D6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[91]" -type "float2" -0.0017578969 0.022063129 ;
	setAttr ".uvtk[168]" -type "float2" -0.0018414385 0.016742319 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "A5401890-4A9B-7C0E-AF38-95B36586AEEB";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak12";
	rename -uid "2117F627-4637-26D7-682B-07B7ED7D7B8D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "01807206-45BA-E799-B34E-E69112E659FF";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" 3.7550293e-005 -3.2550797e-006 ;
	setAttr ".uvtk[173]" -type "float2" 0.0018414374 0.016742319 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "D15069DB-49FD-1ABE-D7D3-34A6D97FC507";
	setAttr ".ics" -type "componentList" 2 "vtx[62]" "vtx[98]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak13";
	rename -uid "EE604E21-4806-9B0F-71B4-E98C42A79AAE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[98]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "212F37DA-4145-E460-6EEC-B096BBDC60F6";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[97]" -type "float2" -3.3795659e-005 -3.6625545e-006 ;
	setAttr ".uvtk[160]" -type "float2" -0.0024585591 0.016765464 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "00C5235C-4ABE-FFC8-EF14-43AB652591E0";
	setAttr ".ics" -type "componentList" 2 "vtx[63]" "vtx[97]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak14";
	rename -uid "B32BFF6C-48ED-6103-4056-1994D606A3DB";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.012413979 0 ;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "988C2F2B-47D6-BE4E-0E00-01B2919EE456";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[80]" -type "float2" -7.2113603e-006 -0.020038066 ;
	setAttr ".uvtk[81]" -type "float2" -3.1832315e-012 0.020378593 ;
	setAttr ".uvtk[161]" -type "float2" 0.0018414336 0.016742319 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "819F4A0E-4F59-4BA2-B1F6-D780EF215A52";
	setAttr ".ics" -type "componentList" 2 "vtx[48]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak15";
	rename -uid "0E63D7D7-40A3-2F1D-A107-E3A03DC0F388";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.012413979 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "F65C5448-4AC9-0D45-125F-07B66A57EA3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[101:103]" "e[198:201]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 14.7002 11.009312 0 ;
	setAttr ".rs" 55257;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 14.700200355398923 11.009311954922985 -14.700200355398923 ;
	setAttr ".cbx" -type "double3" 14.700200355398923 11.009311954922985 14.700200355398923 ;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "2A97B3A0-44C5-CCE6-F62F-7F92278E97C3";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -0.0005658567 -0.00031822722 ;
	setAttr ".uvtk[38]" -type "float2" -6.2496833e-006 2.1790458e-009 ;
	setAttr ".uvtk[39]" -type "float2" 2.1778326e-009 -9.094947e-013 ;
	setAttr ".uvtk[176]" -type "float2" -0.0024585591 1.5636072 ;
	setAttr ".uvtk[196]" -type "float2" -0.0028789979 1.5672631 ;
	setAttr ".uvtk[197]" -type "float2" 0.0024585603 1.5636072 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "EAC8545F-4C41-4560-0379-789FF1F28276";
	setAttr ".ics" -type "componentList" 4 "vtx[3]" "vtx[20]" "vtx[96]" "vtx[103]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak16";
	rename -uid "5DA169D1-41ED-6982-3719-98BC5AF80345";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.12566137 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.047316164 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.12566137 0 ;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "B4D910EE-4F0C-6612-1FAE-3CA57A6AACB4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[30]" -type "float2" -7.814263e-006 6.7248846e-009 ;
	setAttr ".uvtk[31]" -type "float2" -7.2707051e-010 7.9580786e-013 ;
	setAttr ".uvtk[177]" -type "float2" 0.0028795078 1.5672631 ;
	setAttr ".uvtk[192]" -type "float2" -0.0024580427 1.5636072 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "889D5409-4368-0A04-BD7F-AABBA825009D";
	setAttr ".ics" -type "componentList" 2 "vtx[16]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak17";
	rename -uid "EB17447D-469B-CF09-91E3-2490CEC5701A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078345209 7.4505806e-008 ;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "89AD2A33-4B44-14D5-446E-529A21B23C67";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[22]" -type "float2" -8.2157658e-006 0.013483824 ;
	setAttr ".uvtk[23]" -type "float2" 0.013483817 -1.1368684e-013 ;
	setAttr ".uvtk[180]" -type "float2" -0.0023202074 1.5636072 ;
	setAttr ".uvtk[193]" -type "float2" 0.0028790068 1.5672631 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "700DCFD2-40DE-E0E3-B7C2-01B32AF9D372";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak18";
	rename -uid "28F76465-495D-2BE9-EE09-DF9DB86F39EC";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078345209 0 ;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "B012CD20-4C38-62F0-8BCD-38AFFDD86DD6";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" -8.2909437e-006 -0.010137624 ;
	setAttr ".uvtk[15]" -type "float2" -0.010331554 -1.1368684e-013 ;
	setAttr ".uvtk[181]" -type "float2" 0.0027173103 1.5672662 ;
	setAttr ".uvtk[200]" -type "float2" -0.0024585628 1.5636072 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "F949BC4C-4D94-8568-1BE7-599774DEDED2";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak19";
	rename -uid "160BF642-4F54-5295-1300-6AB59FD9C1E9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078345209 0 ;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "04FAB166-4B6A-25A5-ABDA-4892E1A28964";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[54]" -type "float2" -8.3208888e-006 -0.0025343359 ;
	setAttr ".uvtk[55]" -type "float2" -0.0024342225 -1.1368684e-013 ;
	setAttr ".uvtk[184]" -type "float2" -0.0024585612 1.5636072 ;
	setAttr ".uvtk[201]" -type "float2" 0.0028789942 1.5672631 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "05D2CECB-4DFE-ADF8-DE4F-0BAE409584E4";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak20";
	rename -uid "0514F17F-46FF-07F2-C97D-799D9E7D71CD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078345209 0 ;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "3287B8DB-4B71-03AC-3E75-47BBE91BFE14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" -7.156832e-006 -0.0024233875 ;
	setAttr ".uvtk[11]" -type "float2" -3.4134879e-005 0.00213899 ;
	setAttr ".uvtk[189]" -type "float2" 0.0024585582 1.5636072 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "2328E16E-41F3-E741-6C6B-849D316A5B3E";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[97]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak21";
	rename -uid "F1C2B0A4-4494-71D7-B3C9-86927833D799";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[97]" -type "float3" 0 0.078345209 0 ;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "B7B1B943-4580-6D79-7A5C-FA867DC6DF61";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[46]" -type "float2" -1.0123886e-005 -0.0012393998 ;
	setAttr ".uvtk[47]" -type "float2" -0.00058157509 0.00050397305 ;
	setAttr ".uvtk[185]" -type "float2" 0.0028789912 1.5672631 ;
	setAttr ".uvtk[188]" -type "float2" -0.0028789954 1.5672631 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "D2ACB51E-4D48-D41B-3B72-AA992FE0D66A";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[96]";
	setAttr ".ix" -type "matrix" 29.400390196398963 0 0 0 0 11.743567784435479 0 0 0 0 29.400390196398963 0
		 0 6.6132423159839844 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak22";
	rename -uid "321CD7DB-4A32-6A77-2EB9-CABFAC0CF6C4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[96]" -type "float3" 0 0.078345209 0 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "vray";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyMergeVert20.out" "pCubeShape1.i";
connectAttr "polyTweakUV20.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "VRaySunTarget1.src" "VRaySunShape1.trg";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "VRayMtl1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "VRayMtl2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "VRayMtl1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "VRayMtl2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "VRaySky1.oc" ":vraySettings.caet1";
connectAttr "VRaySky1.oc" ":vraySettings.caet2";
connectAttr "VRaySky1.oc" ":vraySettings.caet3";
connectAttr "VRaySky1.oc" ":vraySettings.caet4";
connectAttr "VRayMtl1.oc" "VRayMtl1SG.ss";
connectAttr "VRayMtl1SG.msg" "materialInfo1.sg";
connectAttr "VRayMtl1.msg" "materialInfo1.m";
connectAttr "VRayMtl2.oc" "VRayMtl2SG.ss";
connectAttr "VRayMtl2SG.msg" "materialInfo2.sg";
connectAttr "VRayMtl2.msg" "materialInfo2.m";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "VRaySunShape1.msg" "VRaySky1.s";
connectAttr "VRaySunShape1.osp" "VRaySky1.sp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweakUV1.ip";
connectAttr "polyTweak3.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak3.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak4.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak4.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak5.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak6.out" "polyMergeVert4.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak6.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV5.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak7.ip";
connectAttr "polyMergeVert5.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweakUV6.ip";
connectAttr "polyTweak8.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak8.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak9.out" "polyMergeVert7.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak9.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak10.out" "polyMergeVert8.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak10.ip";
connectAttr "polyMergeVert8.out" "polyTweakUV9.ip";
connectAttr "polyTweak11.out" "polyMergeVert9.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak11.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak12.out" "polyMergeVert10.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak12.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak13.out" "polyMergeVert11.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak13.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV12.ip";
connectAttr "polyTweak14.out" "polyMergeVert12.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV12.out" "polyTweak14.ip";
connectAttr "polyMergeVert12.out" "polyTweakUV13.ip";
connectAttr "polyTweak15.out" "polyMergeVert13.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV13.out" "polyTweak15.ip";
connectAttr "polyMergeVert13.out" "polyExtrudeEdge3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweakUV14.ip";
connectAttr "polyTweak16.out" "polyMergeVert14.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV14.out" "polyTweak16.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV15.ip";
connectAttr "polyTweak17.out" "polyMergeVert15.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV15.out" "polyTweak17.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV16.ip";
connectAttr "polyTweak18.out" "polyMergeVert16.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV16.out" "polyTweak18.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV17.ip";
connectAttr "polyTweak19.out" "polyMergeVert17.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV17.out" "polyTweak19.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV18.ip";
connectAttr "polyTweak20.out" "polyMergeVert18.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV18.out" "polyTweak20.ip";
connectAttr "polyMergeVert18.out" "polyTweakUV19.ip";
connectAttr "polyTweak21.out" "polyMergeVert19.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV19.out" "polyTweak21.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV20.ip";
connectAttr "polyTweak22.out" "polyMergeVert20.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV20.out" "polyTweak22.ip";
connectAttr "VRayMtl1SG.pa" ":renderPartition.st" -na;
connectAttr "VRayMtl2SG.pa" ":renderPartition.st" -na;
connectAttr "VRayMtl1.msg" ":defaultShaderList1.s" -na;
connectAttr "VRayMtl2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "VRaySunShape1.ltd" ":lightList1.l" -na;
connectAttr "VRaySunTarget1.msg" ":lightList1.l" -na;
connectAttr "VRayLightRectShape1.ltd" ":lightList1.l" -na;
connectAttr "VRaySky1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "VRayGeoSun1.iog" ":defaultLightSet.dsm" -na;
connectAttr "VRayGeoSun1Transform.iog" ":defaultLightSet.dsm" -na;
connectAttr "VRayLightRect1.iog" ":defaultLightSet.dsm" -na;
// End of bar.ma
