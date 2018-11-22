mkdir ..\build\shaders
..\dependencies\windows\vulkan-1.1.85.0\Bin\glslangValidator.exe -V -o ..\build\shaders\vert.spv ..\src\shaders\demo.vert
..\dependencies\windows\vulkan-1.1.85.0\Bin\glslangValidator.exe -V -o ..\build\shaders\frag.spv ..\src\shaders\demo.frag
