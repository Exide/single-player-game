#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include <stdexcept>
#include <vector>
#include <iostream>
#include <cstring>
#include <map>
#include <set>

#include "renderer.cpp"

class Application {

public:

    Application() : renderer(800, 600) {}

    void run() {
        renderer.initializeWindow();
        renderer.initializeVulkan();
        loop();
        renderer.cleanup();
    }

private:

    Renderer renderer;

    void loop() {
        renderer.update();
    }

};
