rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 10 10 1" "tests\02" 2
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 14575 60522 36426" "tests\03" 3
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 48772 79445 90081" "tests\04" 4
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 90629 33447 3497" "tests\05" 5
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 7775 47202 94325" "tests\06" 6
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 4784 63982 68417" "tests\07" 7
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 31932 2156 35902" "tests\08" 8
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 78537 95728 23857" "tests\09" 9
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 86918 30739 29211" "tests\10" 10
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 38506 39679 63340" "tests\11" 11
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 61868 86568 60016" "tests\12" 12
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 96263 87940 24593" "tests\13" 13
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 36991 1449 90310" "tests\14" 14
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 77068 23355 11431" "tests\15" 15
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 91757 8580 49218" "tests\16" 16
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 94328 74934 63676" "tests\17" 17
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 96221 29355 99080" "tests\18" 18
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 31545 95922 48511" "tests\19" 19
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 75467 34067 38674" "tests\20" 20
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 6504 84691 99835" "tests\21" 21
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 44965 62034 59980" "tests\22" 22
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 45895 81221 32501" "tests\23" 23
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 8325 48152 47731" "tests\24" 24
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 48153 29302 9896" "tests\25" 25
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 97489 19022 8399" "tests\26" 26
call scripts\gen-input-via-stdout.bat "files\gen_rnd.exe 66466 70607 74432" "tests\27" 27
call scripts\gen-input-via-stdout.bat "files\mod.exe 60522 14575 14573 1" "tests\28" 28
call scripts\gen-input-via-stdout.bat "files\mod.exe 36426 79445 79443 2" "tests\29" 29
call scripts\gen-input-via-stdout.bat "files\mod.exe 60522 14575 2 228" "tests\30" 30
call scripts\gen-input-via-stdout.bat "files\mod.exe 36426 79445 2 1337" "tests\31" 31
call scripts\gen-input-via-stdout.bat "files\mod_2.exe 100000 100000 0 1" "tests\32" 32
call scripts\gen-input-via-stdout.bat "files\mod_2.exe 100000 100000 99999 228" "tests\33" 33
call scripts\gen-answer.bat tests\01 tests\01.a "tests" ""
call scripts\gen-answer.bat tests\02 tests\02.a "tests" ""
call scripts\gen-answer.bat tests\03 tests\03.a "tests" ""
call scripts\gen-answer.bat tests\04 tests\04.a "tests" ""
call scripts\gen-answer.bat tests\05 tests\05.a "tests" ""
call scripts\gen-answer.bat tests\06 tests\06.a "tests" ""
call scripts\gen-answer.bat tests\07 tests\07.a "tests" ""
call scripts\gen-answer.bat tests\08 tests\08.a "tests" ""
call scripts\gen-answer.bat tests\09 tests\09.a "tests" ""
call scripts\gen-answer.bat tests\10 tests\10.a "tests" ""
call scripts\gen-answer.bat tests\11 tests\11.a "tests" ""
call scripts\gen-answer.bat tests\12 tests\12.a "tests" ""
call scripts\gen-answer.bat tests\13 tests\13.a "tests" ""
call scripts\gen-answer.bat tests\14 tests\14.a "tests" ""
call scripts\gen-answer.bat tests\15 tests\15.a "tests" ""
call scripts\gen-answer.bat tests\16 tests\16.a "tests" ""
call scripts\gen-answer.bat tests\17 tests\17.a "tests" ""
call scripts\gen-answer.bat tests\18 tests\18.a "tests" ""
call scripts\gen-answer.bat tests\19 tests\19.a "tests" ""
call scripts\gen-answer.bat tests\20 tests\20.a "tests" ""
call scripts\gen-answer.bat tests\21 tests\21.a "tests" ""
call scripts\gen-answer.bat tests\22 tests\22.a "tests" ""
call scripts\gen-answer.bat tests\23 tests\23.a "tests" ""
call scripts\gen-answer.bat tests\24 tests\24.a "tests" ""
call scripts\gen-answer.bat tests\25 tests\25.a "tests" ""
call scripts\gen-answer.bat tests\26 tests\26.a "tests" ""
call scripts\gen-answer.bat tests\27 tests\27.a "tests" ""
call scripts\gen-answer.bat tests\28 tests\28.a "tests" ""
call scripts\gen-answer.bat tests\29 tests\29.a "tests" ""
call scripts\gen-answer.bat tests\30 tests\30.a "tests" ""
call scripts\gen-answer.bat tests\31 tests\31.a "tests" ""
call scripts\gen-answer.bat tests\32 tests\32.a "tests" ""
call scripts\gen-answer.bat tests\33 tests\33.a "tests" ""
call scripts\gen-answer.bat tests\34 tests\34.a "tests" ""
call scripts\gen-answer.bat tests\35 tests\35.a "tests" ""
call scripts\gen-answer.bat tests\36 tests\36.a "tests" ""

