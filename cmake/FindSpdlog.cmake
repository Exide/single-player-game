set(SPDLOG_ROOT "${DEPENDENCY_DIR}/common/spdlog-1.2.1")

find_path(
        SPDLOG_INCLUDE_DIR
        NAMES spdlog/spdlog.h
        PATHS ${SPDLOG_ROOT}/include
)
