all: url_test url.so

url_test:
	$(CXX) -Wall -Wnon-virtual-dtor -DBOOST_TEST_MAIN -DBOOST_TEST_DYN_LINK Url.cpp Url_test.cpp Path.cpp -lboost_unit_test_framework -lboost_regex -o url_test

url.so:
	$(CXX) Path.cpp Url.cpp url_python_module.cpp -shared -lboost_python -lboost_regex -I /usr/include/python2.7 -fPIC -o url.so



clean:
	rm url_test url.so

.PHONY: all clean
