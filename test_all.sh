#!/bin/sh
echo
echo -n "=== Colleen/C ========> "
cd Colleen/C
make d
make fclean

echo -n "=== Grace/C ==========> "
cd ../../Grace/C
make d
make fclean

echo -n "=== Sully/C ==========> "
cd ../../Sully/C
make d
make fclean

echo -n "=== Colleen/ASM ======> "
cd ../../Colleen/ASM
make d
make fclean

echo -n "=== Grace/ASM ========> "
cd ../../Grace/ASM
make d
make fclean

echo -n "=== Sully/ASM ========> "
cd ../../Sully/ASM
make d
make fclean


echo -n "=== Colleen/Python ===> "
cd ../../Colleen/Python
./Colleen.py > b
diff Colleen.py b > /dev/null && echo '[ OK ]' || echo '[ KO ]'
rm b

echo -n "=== Grace/Python =====> "
cd ../../Grace/Python
./Grace.py > b
diff Grace.py Grace_kid.py > /dev/null && echo '[ OK ]' || echo '[ KO ]'
rm b

echo -n "=== Sully/Python =====> "
cd ../../Sully/Python
./Sully.py > b
diff Sully.py b > /dev/null && echo '[ OK ]' || echo '[ KO ]'
rm b

cd ../..
echo
