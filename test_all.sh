#!/bin/sh
echo
echo -n "=== Colleen/C =====> "
cd Colleen/C
make d
make fclean
echo -n "=== Colleen/ASN ===> "
cd ../../Colleen/ASM
make d
make fclean
echo -n "=== Grace/C =======> "
cd ../../Grace/C
make d
make fclean
echo -n "=== Grace/ASM =====> "
cd ../../Grace/ASM
make d
make fclean
echo -n "=== Sully/C =======> "
cd ../../Sully/C
make d
make fclean
echo -n "=== Sully/ASM =====> "
cd ../../Sully/ASM
make d
make fclean
cd ../..
echo
