# HEIF-Utility-Native-DLL
Part Of <a href="https://github.com/liuziangexit/HEIF-Utility">HEIF-Utility</a>.<br>

<h2>总览</h2>
此工程生成 HUD.DLL，该动态库是 HEIF 实用工具的一部分。<br>

<h2>接口</h2>
void heif2jpg(const char* heif_bin, int input_buffer_size, const int jpg_quality, char* output_buffer, int output_buffer_size)<br>
作用: 将 Apple HEIF 转换为 JPEG。<br>
调用约定: Cdecl<br>
参数 heif_bin: HEIF 文件二进制数据。<br>
参数 input_buffer_size: HEIF 文件二进制数据大小。<br>
参数 jpg_quality: 设定输出的 JPEG 图像的质量。取值 1-100，数值越高质量越好。<br>
参数 output_buffer: JPEG 图像输出缓冲区。<br>
参数 heif_bin: 输出缓冲区大小。<br>
异常: 无。<br>

<h2>原理</h2>
Apple HEIF 将图片分割为数个 512*512 像素的图块(tiles)，然后按照 从左到右，从上到下 的顺序，依次将图块存入 HEIF 图像序列。<br>
图块的角度可能和照片的角度不一致，但 HEIF 同时记录了图块相对于照片的角度。<br>
某些边缘的图块可能包含黑色填充区，因为某些时候照片的分辨率不一定就是 512*512 的倍数，所以多出来的部分用黑色填充。<br>

<h2>示例<h2>
对于一张由 iPhone 7 拍摄的分辨率为 4032*3024 的典型图像，Apple HEIF 将这样进行储存。
