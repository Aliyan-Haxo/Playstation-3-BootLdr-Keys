linux: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -lgmp -lcrypto -lz -o build/make_self_npdrm
	gcc make_self.c -lgmp -lcrypto -lz -o build/make_self
	gcc package_finalize.c -lcrypto -o build/package_finalize

windows: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -I"C:\Program Files (x86)\GnuWin32\include" -L"C:\OpenSSL-Win32\lib\MinGW" -lgmp -leay32 "C:\Program Files (x86)\GnuWin32\bin\zlib1.dll" -o build/make_self_npdrm.exe
	gcc make_self.c -I"C:\Program Files (x86)\GnuWin32\include" -L"C:\OpenSSL-Win32\lib\MinGW" -lgmp -leay32 "C:\Program Files (x86)\GnuWin32\bin\zlib1.dll" -o build/make_self.exe
	gcc package_finalize.c -L"C:\OpenSSL-Win32\lib\MinGW" -leay32 -o build/package_finalize.exe
	
osx: make_self.c package_finalize.c
	gcc make_self.c -DNPDRM -I/opt/local/include -I/opt/local -L/opt/local/lib -lgmp -lcrypto -lz -o build/make_self_npdrm
	gcc make_self.c -I/opt/local/include -I/opt/local -L/opt/local/lib -lgmp -lcrypto -lz -o build/make_self
	gcc package_finalize.c  -I/opt/local/include -I/opt/local -L/opt/local/lib -lcrypto -o build/package_finalize
