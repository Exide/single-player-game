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

private:

    Renderer* renderer;

public:

    Application() {
        renderer = new Renderer(800, 600);
    }

    ~Application() {
        delete renderer;
    }

    void run() {
        renderer->initializeWindow();
        renderer->initializeVulkan();
        renderer->update();
        renderer->cleanup();
    }

};
