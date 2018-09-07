@echo off

copy vert.hlsl shader.vert
copy frag.hlsl shader.frag

..\Libraries\VulkanSDK\Bin32\glslangValidator.exe -V shader.vert -o vert.spv
..\Libraries\VulkanSDK\Bin32\glslangValidator.exe -V shader.frag -o frag.spv

del shader.vert
del shader.frag



pause 