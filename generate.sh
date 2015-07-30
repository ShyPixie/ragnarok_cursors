#!/bin/bash
# LaraCraft304 © 2013

where="$PWD"/compiled
mkdir -p "$where"

echo "diagonal resize"
cd diagonal_resize
xcursorgen diagonal_resize_1.cursor diagonal_resize1 || exit 1
xcursorgen diagonal_resize_2.cursor diagonal_resize2 || exit 1
cp -f diagonal_resize1 "$where"/top_left_corner
cp -f diagonal_resize1 "$where"/bd_double_arrow
cp -f diagonal_resize1 "$where"/bottom_right_corner
cp -f diagonal_resize1 "$where"/ll_angle
cp -f diagonal_resize2 "$where"/top_right_corner
cp -f diagonal_resize2 "$where"/bottom_left_corner
rm -f diagonal_resize1 diagonal_resize2
cd ..

echo "horizontal resize"
cd horizontal_resize
xcursorgen horizontal_resize.cursor horizontal_resize || exit 1
cp -f horizontal_resize "$where"/left_side
cp -f horizontal_resize "$where"/right_side
cp -f horizontal_resize "$where"/left_tee
cp -f horizontal_resize "$where"/right_tee
cp -f horizontal_resize "$where"/h_double_arrow
cp -f horizontal_resize "$where"/sb_h_double_arrow
cp -f horizontal_resize "$where"/sb_right_arrow
rm -f horizontal_resize
cd ..

echo "move"
cd move
xcursorgen move.cursor move || exit 1
cp -f move "$where"/fleur
rm -f move
cd ..

echo "unavailable"
cd unavailable
xcursorgen unavailable.cursor unavailable || exit 1
cp -f unavailable "$where"/cross
cp -f unavailable "$where"/tcross
cp -f unavailable "$where"/crosshair
cp -f unavailable "$where"/crossed_circle
cp -f unavailable "$where"/cross_reverse
cp -f unavailable "$where"/circle
cp -f unavailable "$where"/plus
rm -f unavailable
cd ..

echo "vertical resize"
cd vertical_resize
xcursorgen vertical_resize.cursor vertical_resize || exit 1
cp -f vertical_resize "$where"/sb_up_arrow
cp -f vertical_resize "$where"/sb_v_double_arrow
cp -f vertical_resize "$where"/top_side
cp -f vertical_resize "$where"/bottom_side
cp -f vertical_resize "$where"/top_tee
cp -f vertical_resize "$where"/bottom_tee
cp -f vertical_resize "$where"/v_double_arrow
cp -f vertical_resize "$where"/double_arrow
cp -f vertical_resize "$where"/based_arrow_down
cp -f vertical_resize "$where"/based_arrow_up
cp -f vertical_resize "$where"/center_ptr
rm -f vertical_resize
cd ..

exit 0
