#! /bin/bash                                                                                                                                                                                                                                                                                                                                                              
# nohup ./script.sh &                                                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                     

LG_BUMPINSIDE=('reg' 'amb');
LG_DIPINSIDE=('reg' 'amb');
LG_BUMP=('reg' 'amb');
LG_DIP=('reg' 'amb');
LG_BUBBLE=('reg' 'amb');
HEIGHT=('0.02');


### Bumpinside
for lighting in "${LG_BUMPINSIDE[@]}";do
	for height in "${HEIGHT[@]}";do
		INPUT_FILE="./defect_inner_surface.xml"
		DEFECT="../../object/defects/defect_bumpinside_h${height}.obj"
		OUTPUT_FILE="./defect_bumpinside_${lighting}_h${height}.exr"

		LIGHTING="./scene_setup_orb_${lighting}.xml"

		mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE -Ddefect=${DEFECT} -Dlighting=${LIGHTING}
	done
done


### Dipinside
for lighting in "${LG_DIPINSIDE[@]}";do
	for height in "${HEIGHT[@]}";do
		INPUT_FILE="./defect_inner_surface.xml"
		DEFECT="../../object/defects/defect_dipinside_h${height}.obj"
		OUTPUT_FILE="./defect_dipinside_${lighting}_h${height}.exr"

		LIGHTING="./scene_setup_orb_${lighting}.xml"
		
		mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE -Ddefect=${DEFECT} -Dlighting=${LIGHTING}
	done
done


### Bump
for lighting in "${LG_BUMP[@]}";do
	for height in "${HEIGHT[@]}";do
		INPUT_FILE="./defect_outer_surface.xml"
		DEFECT="../../object/defects/defect_bump_h${height}.obj"
		OUTPUT_FILE="./defect_bump_${lighting}_h${height}.exr"

		LIGHTING="./scene_setup_orb_${lighting}.xml"
		
		mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE -Ddefect=${DEFECT} -Dlighting=${LIGHTING}
	done
done



### Dip
for lighting in "${LG_DIP[@]}";do
	for height in "${HEIGHT[@]}";do
		INPUT_FILE="./defect_outer_surface.xml"
		DEFECT="../../object/defects/defect_dip_h${height}.obj"
		OUTPUT_FILE="./defect_dip_${lighting}_h${height}.exr"

		LIGHTING="./scene_setup_orb_${lighting}.xml"
		
		mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE -Ddefect=${DEFECT} -Dlighting=${LIGHTING}
	done
done


### Bubble
for lighting in "${LG_BUBBLE[@]}";do
	for height in "${HEIGHT[@]}";do
		INPUT_FILE="./defect_bubble.xml"
		DEFECT="../../object/defects/defect_bubble_h${height}.obj"
		OUTPUT_FILE="./defect_bubble_${lighting}_h${height}.exr"

		LIGHTING="./scene_setup_orb_${lighting}.xml"
		
		mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE -Ddefect=${DEFECT} -Dlighting=${LIGHTING}
	done
done





echo "-------Done-------"