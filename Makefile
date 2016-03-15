run_all_in_parallel:
parallel_test:
	make -j test_Windows8.1_firefox_40 test_Windows7_chrome_45

serial_test:
	make -j test_Windows7_chrome_45
	make -j test_Windows8.1_firefox_40

test_Windows8.1_firefox_40:
	browserName=firefox version=40.0 platform="Windows 8.1" mvn test

test_Windows7_chrome_45:
	browserName=chrome vemakersion=45.0 platform="Windows 7" mvn test