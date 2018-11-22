#include <string>
#include <vector>
#include <fstream>
#include <iostream>

static std::vector<char> readFile(const std::string& filename) {
    std::cout << "reading file: " << filename << std::endl;

    std::ifstream file(filename, std::ios::ate | std::ios::binary);

    if (!file.is_open()) {
        throw std::runtime_error("unable to open file: " + filename);
    }

    auto size = (size_t) file.tellg();
    std::vector<char> buffer(size);

    file.seekg(0);
    file.read(buffer.data(), size);
    file.close();

    return buffer;
}
