#! /bin/bash                                                                                                                                                                                                                                                                                                                                                              
# nohup ./script.sh &                                                                                                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                                                                                     

FILES=(
'01_salvator_mundi'
'02_dark_field_lighting'
'03_bump_defect'
'04_spots_unrestrained'
'05_spots_trapezoidal_baffle'
'06_spots_concave_reflector'
'07_spots_painted_speck'
'08_spots_three_white_spots'
)

for filename in "${FILES[@]}";do
    INPUT_FILE="./${filename}.xml"
    OUTPUT_FILE="./result/${filename}.exr"
    mitsuba $INPUT_FILE -b4 -o $OUTPUT_FILE
done


echo "-------Done-------"