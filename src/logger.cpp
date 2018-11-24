#include <spdlog/sinks/stdout_color_sinks.h>
#include <spdlog/sinks/basic_file_sink.h>

class Logger {

private:

    spdlog::logger* logger;

public:

    explicit Logger(const char* name) {
        auto console_sink = create_console_sink();
        auto file_sink = create_file_sink(name);
        logger = new spdlog::logger(name, {console_sink, file_sink});
    }

    ~Logger() {
        delete logger;
    }

private:

    static std::shared_ptr<spdlog::sinks::sink> create_console_sink() {
        auto console_sink = std::make_shared<spdlog::sinks::stdout_color_sink_mt>();
        console_sink->set_level(spdlog::level::trace);
        return console_sink;
    }

    static std::shared_ptr<spdlog::sinks::sink> create_file_sink(std::string name) {
        auto filename = name + ".log";
        auto file_sink = std::make_shared<spdlog::sinks::basic_file_sink_mt>(filename, true);
        file_sink->set_level(spdlog::level::trace);
        return file_sink;
    }

};
