#!/bin/sh
echo
echo "=== Colleen/C ==="
cd Colleen/C
make d
make fclean
echo
echo "=== Colleen/ASN ==="
cd ../../Colleen/ASM
make d
make fclean
echo
echo "=== Grace/C ==="
cd ../../Grace/C
make d
make fclean
echo
echo "=== Grace/ASM ==="
cd ../../Grace/ASM
make d
make fclean
echo
echo "=== Sully/C ==="
cd ../../Sully/C
make d
make fclean
echo
echo "=== Sully/ASM ==="
cd ../../Sully/ASM
make d
make fclean
cd ../..
