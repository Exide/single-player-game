#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include <stdexcept>
#include <vector>
#include <iostream>
#include <cstring>
#include <map>
#include <set>

#include "logger.cpp"
#include "renderer.cpp"

class Application {

private:

    Logger* logger;
    Renderer* renderer;

public:

    Application() {
        logger = new Logger("single-player-game");
        renderer = new Renderer(800, 600);
    }

    ~Application() {
        delete renderer;
        delete logger;
    }

    void run() {
        renderer->initializeWindow();
        renderer->initializeVulkan();
        renderer->update();
        renderer->cleanup();
    }

};
