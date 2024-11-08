echo "Testando (2)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="2 **
1 *
5 *****
6 ******
2 **
8 ********
6 ******
7 *******
10 **********
10 **********
7 *******
3 ***
6 ******
7 *******
3 ***
8 ********
9 *********
9 *********
4 ****
5 *****
3 ***
3 ***
5 *****
4 ****
5 *****
10 **********
2 **
6 ******
9 *********
2 **
2 **
1 *
1 *
7 *******
0 
3 ***
10 **********
0 
5 *****
2 **
9 *********
4 ****
4 ****
8 ********
0 
7 *******
6 ******
3 ***
9 *********
9 *********
10 **********
0 
8 ********
3 ***
1 *
8 ********
10 **********
4 ****
7 *******
6 ******
9 *********
0 
0 
2 **
3 ***
2 **
3 ***
2 **
2 **
8 ********
7 *******
3 ***
7 *******
4 ****
3 ***
5 *****
9 *********
6 ******
7 *******
1 *
0 
9 *********
7 *******
9 *********
6 ******
8 ********
5 *****
10 **********
0 
0 
1 *
0 
0 
0 
10 **********
3 ***
5 *****
8 ********
7 *******
5 *****"


if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0