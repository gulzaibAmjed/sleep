#include <Poco/Thread.h>
#include <string>
#include <iostream>

using Poco::Thread;

int main(){
    std::cout << "sleep for 3 seconds \n";
    Thread::sleep(3000);
    std::cout << "finished! \n";
    return 0;
}
