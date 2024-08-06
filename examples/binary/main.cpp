#include <fstream>
#include <iostream>

using namespace std;

int main() {
  ifstream in;
  in.open("in.bin", ios::in | ios::binary);

  // check open file for write
  if (!in.is_open()) {
    cerr << "Error in open file './in.bin'" << endl;
    return 1;
  }

  // read integer - '111' in hex is '6f'
  int num;
  in.read((char *)&num, sizeof(num));
  cout << "Integer: " << num << endl;

  // read char - 'e' in hex is '65'
  char ch;
  in.read((char *)&ch, sizeof(ch));
  cout << "Char: " << ch << endl;

  // close
  in.close();

  return 0;
}
