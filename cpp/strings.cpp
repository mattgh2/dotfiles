#include <iostream>
#include <string>
#include <cstring>

/* 
 * @Brief: Removes a word from a string
 * @Param: __word Source string
 * @Param: __remove the substring which will get removed from source
 * @param __pos position of the first index in word
 *
 * @return the new string
 */

std::string removeWordInString(std::string word, std::string remove, int pos) {
    std::string newWord;
    if (pos == (int)word.length()) {
        return newWord;
    }
    newWord+= word[pos];
    
    newWord+= removeWordInString(word, remove,pos + 1);

    return (newWord.substr(0,remove.length()) == remove) ? newWord.substr(5, newWord.length() - 1) : newWord;
}


int main(int argc, char **argv){
    
    std::string word = "applehelloappleshushappleshush!";
    std::string newString = removeWordInString(word, "apple", 0);
    std::cout << newString; 

    char *test = nullptr;
    return 0;
}


