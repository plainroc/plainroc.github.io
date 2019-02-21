import os
import sys

def main():
	hasMain = False
	filename = sys.argv[1]
	if (filename.endswith(".cpp")):
		filename = filename[:-4]
	with open(filename + '.cpp', 'r') as f:
	    hasMain = ("int main(int argc, char** argv)" in f.read())
	    
	dict = {'name':filename}
	if (hasMain):
		os.system("clang++ -std=c++11 -o %(name)s.exe %(name)s.cpp" % dict)
	else:
		os.system("clang++ -std=c++11 %(name)s.cpp -shared -fPIC -o %(name)s.so" % dict)

if __name__ == '__main__':
    main()
