@echo Make sure you copied 'basic.bin' from the compiler's folder!
@pause

@rem pad the menu program
copy /y /b basic.bin + /b menupad.bin temp.bin
\cygwin\bin\split -b 1M temp.bin tmp
copy /y tmpaa menupad.bin
del tmpaa
del tmpab
del temp.bin

@rem build the cart
copy /y /b menupad.bin + /b "Thunder Force II (Tursi Hack).bin" + /b "Thunder Force II (Tursi Hack).bin" +/b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force IV - Lightening Force (Tursi Hack).bin" TF3MultiCart.bin 

rem --alternates--
rem copy /y /b menupad.bin + /b "Thunder Force II (Tursi Hack).bin" + /b "Thunder Force II (Tursi Hack).bin" +/b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force IV - Lightening Force (USA).bin" TF3MultiCart.bin 
rem copy /y /b menupad.bin + /b "Thunder Force IV - Lightening Force (Tursi Hack).bin" +/b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force IV - Lightening Force (Tursi Hack).bin" TF3MultiCart.bin 
rem copy /y /b menupad.bin + /b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force III (Tursi Hack 2).bin" +/b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force III (Tursi Hack 2).bin" + /b "Thunder Force IV - Lightening Force (Tursi Hack).bin" TF3MultiCart.bin 


@rem byte swap it
swapbytes TF3MultiCart.bin

@rem split the result
\cygwin\bin\split -b 2M TF3MultiCart.binswapped.bin x

@pause
