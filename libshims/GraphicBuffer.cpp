/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <ui/GraphicBuffer.h>

// GraphicBuffer(uint32_t inWidth, uint32_t inHeight, PixelFormat inFormat,
//               uint32_t inUsage, std::string requestorName = "<Unknown>");
extern "C" void _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
    uint32_t, uint32_t, android::PixelFormat, uint32_t, std::string);

// GraphicBuffer(unsigned int, unsigned int, int, unsigned int, unsigned int, unsigned int, native_handle*, bool);
extern "C" void _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(unsigned int, unsigned int, android::PixelFormat, unsigned int, unsigned int, unsigned int, native_handle*, bool);

extern "C" void _ZN7android13GraphicBufferC1Ejjij( uint32_t inWidth, uint32_t inHeight, android::PixelFormat inFormat, uint32_t inUsage) 
{
  std::string requestorName = "<Unknown>"; _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(inWidth, inHeight, inFormat, inUsage, requestorName);
}

extern "C" void _ZN7android13GraphicBufferC1EjjijjP13native_handleb(unsigned int inWidth, unsigned int inHeight, android::PixelFormat inFormat, unsigned int inUsage, unsigned int inStride, native_handle_t* inHandle, bool keepOwnership) {
  _ZN7android13GraphicBufferC1EjjijjjP13native_handleb(
      inWidth, inHeight, inFormat, 0, inUsage, inStride, inHandle, keepOwnership);
}
