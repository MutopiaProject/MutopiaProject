#!/bin/sh -x
#
# Create 2 books in PDF format of Blake's opus 2
#
# Just so you know what to expect:
# Ubuntu 12.10 AMD Phenom(tm) II X4 945 Processor
#   real    1m21.834s
#   user    1m7.384s
#   sys     0m14.125s
# (I don't think the quad really helps much with LilyPond...)

lilypond -dno-point-and-click -dpaper-size=\"a4\"			\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_1/Blake_op2_no_1-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_2/Blake_op2_no_2-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_3/Blake_op2_no_3-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_4/Blake_op2_no_4-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_5/Blake_op2_no_5-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_6/Blake_op2_no_6-lys"	\
   --output=blake_op2-a4						\
   blake_op2.ly

lilypond -dno-point-and-click -dpaper-size=\"letter\"			\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_1/Blake_op2_no_1-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_2/Blake_op2_no_2-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_3/Blake_op2_no_3-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_4/Blake_op2_no_4-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_5/Blake_op2_no_5-lys"	\
   -I"../../../ftp/BlakeB/Blake_op_2/Blake_op2_no_6/Blake_op2_no_6-lys"	\
   --output=blake_op2-let						\
   blake_op2.ly

