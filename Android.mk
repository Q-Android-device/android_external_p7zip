LOCAL_PATH := $(call my-dir)

common_cflags := \
    -O3 \
    -DANDROID_NDK \
    -DNDEBUG \
    -D_REENTRANT \
    -DENV_UNIX \
    -D_7ZIP_LARGE_PAGES \
    -DEXTERNAL_CODECS \
    -DBREAK_HANDLER \
    -DUNICODE \
    -D_UNICODE \
    -DUNIX_USE_WIN_FILE

common_cflags += \
    -fexceptions \
    -Wno-c++11-narrowing \
    -Wno-dangling-else \
    -Wno-delete-non-virtual-dtor \
    -Wno-deprecated-increment-bool \
    -Wno-ignored-qualifiers \
    -Wno-implicit-exception-spec-mismatch \
    -Wno-implicit-fallthrough \
    -Wno-increment-bool \
    -Wno-logical-op-parentheses \
    -Wno-missing-field-initializers \
    -Wno-non-virtual-dtor \
    -Wno-overloaded-virtual \
    -Wno-reorder \
    -Wno-self-assign \
    -Wno-sign-compare \
    -Wno-switch \
    -Wno-unneeded-internal-declaration \
    -Wno-unused-const-variable \
    -Wno-unused-function \
    -Wno-unused-parameter \
    -Wno-unused-private-field \
    -Wno-unused-variable

common_c_includes := \
    $(LOCAL_PATH)/CPP \
    $(LOCAL_PATH)/CPP/Windows \
    $(LOCAL_PATH)/CPP/Common \
    $(LOCAL_PATH)/C \
    $(LOCAL_PATH)/CPP/myWindows \
    $(LOCAL_PATH)/CPP/include_windows

include $(CLEAR_VARS)

LOCAL_MODULE := lib7z
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := $(common_cflags)
LOCAL_C_INCLUDES := $(common_c_includes)
LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    CPP/7zip/Archive/7z/7zCompressionMode.cpp \
    CPP/7zip/Archive/7z/7zDecode.cpp \
    CPP/7zip/Archive/7z/7zEncode.cpp \
    CPP/7zip/Archive/7z/7zExtract.cpp \
    CPP/7zip/Archive/7z/7zFolderInStream.cpp \
    CPP/7zip/Archive/7z/7zHandler.cpp \
    CPP/7zip/Archive/7z/7zHandlerOut.cpp \
    CPP/7zip/Archive/7z/7zHeader.cpp \
    CPP/7zip/Archive/7z/7zIn.cpp \
    CPP/7zip/Archive/7z/7zOut.cpp \
    CPP/7zip/Archive/7z/7zProperties.cpp \
    CPP/7zip/Archive/7z/7zRegister.cpp \
    CPP/7zip/Archive/7z/7zSpecStream.cpp \
    CPP/7zip/Archive/7z/7zUpdate.cpp \
    CPP/7zip/Archive/ApmHandler.cpp \
    CPP/7zip/Archive/ArHandler.cpp \
    CPP/7zip/Archive/ArchiveExports.cpp \
    CPP/7zip/Archive/ArjHandler.cpp \
    CPP/7zip/Archive/Bz2Handler.cpp \
    CPP/7zip/Archive/Cab/CabBlockInStream.cpp \
    CPP/7zip/Archive/Cab/CabHandler.cpp \
    CPP/7zip/Archive/Cab/CabHeader.cpp \
    CPP/7zip/Archive/Cab/CabIn.cpp \
    CPP/7zip/Archive/Cab/CabRegister.cpp \
    CPP/7zip/Archive/Chm/ChmHandler.cpp \
    CPP/7zip/Archive/Chm/ChmIn.cpp \
    CPP/7zip/Archive/ComHandler.cpp \
    CPP/7zip/Archive/Common/CoderMixer2.cpp \
    CPP/7zip/Archive/Common/DummyOutStream.cpp \
    CPP/7zip/Archive/Common/FindSignature.cpp \
    CPP/7zip/Archive/Common/HandlerOut.cpp \
    CPP/7zip/Archive/Common/InStreamWithCRC.cpp \
    CPP/7zip/Archive/Common/ItemNameUtils.cpp \
    CPP/7zip/Archive/Common/MultiStream.cpp \
    CPP/7zip/Archive/Common/OutStreamWithCRC.cpp \
    CPP/7zip/Archive/Common/OutStreamWithSha1.cpp \
    CPP/7zip/Archive/Common/ParseProperties.cpp \
    CPP/7zip/Archive/CpioHandler.cpp \
    CPP/7zip/Archive/CramfsHandler.cpp \
    CPP/7zip/Archive/DeflateProps.cpp \
    CPP/7zip/Archive/DllExports2.cpp \
    CPP/7zip/Archive/DmgHandler.cpp \
    CPP/7zip/Archive/ElfHandler.cpp \
    CPP/7zip/Archive/ExtHandler.cpp \
    CPP/7zip/Archive/FatHandler.cpp \
    CPP/7zip/Archive/FlvHandler.cpp \
    CPP/7zip/Archive/GzHandler.cpp \
    CPP/7zip/Archive/GptHandler.cpp \
    CPP/7zip/Archive/HandlerCont.cpp \
    CPP/7zip/Archive/HfsHandler.cpp \
    CPP/7zip/Archive/IhexHandler.cpp \
    CPP/7zip/Archive/Iso/IsoHandler.cpp \
    CPP/7zip/Archive/Iso/IsoHeader.cpp \
    CPP/7zip/Archive/Iso/IsoIn.cpp \
    CPP/7zip/Archive/Iso/IsoRegister.cpp \
    CPP/7zip/Archive/LzhHandler.cpp \
    CPP/7zip/Archive/LzmaHandler.cpp \
    CPP/7zip/Archive/MachoHandler.cpp \
    CPP/7zip/Archive/MbrHandler.cpp \
    CPP/7zip/Archive/MslzHandler.cpp \
    CPP/7zip/Archive/MubHandler.cpp \
    CPP/7zip/Archive/Nsis/NsisDecode.cpp \
    CPP/7zip/Archive/Nsis/NsisHandler.cpp \
    CPP/7zip/Archive/Nsis/NsisIn.cpp \
    CPP/7zip/Archive/Nsis/NsisRegister.cpp \
    CPP/7zip/Archive/NtfsHandler.cpp \
    CPP/7zip/Archive/PeHandler.cpp \
    CPP/7zip/Archive/PpmdHandler.cpp \
    CPP/7zip/Archive/QcowHandler.cpp \
    CPP/7zip/Archive/Rar/RarHandler.cpp \
    CPP/7zip/Archive/Rar/Rar5Handler.cpp \
    CPP/7zip/Archive/RpmHandler.cpp \
    CPP/7zip/Archive/SplitHandler.cpp \
    CPP/7zip/Archive/SquashfsHandler.cpp \
    CPP/7zip/Archive/SwfHandler.cpp \
    CPP/7zip/Archive/Tar/TarHandler.cpp \
    CPP/7zip/Archive/Tar/TarHandlerOut.cpp \
    CPP/7zip/Archive/Tar/TarHeader.cpp \
    CPP/7zip/Archive/Tar/TarIn.cpp \
    CPP/7zip/Archive/Tar/TarOut.cpp \
    CPP/7zip/Archive/Tar/TarRegister.cpp \
    CPP/7zip/Archive/Tar/TarUpdate.cpp \
    CPP/7zip/Archive/Udf/UdfHandler.cpp \
    CPP/7zip/Archive/Udf/UdfIn.cpp \
    CPP/7zip/Archive/UefiHandler.cpp \
    CPP/7zip/Archive/VdiHandler.cpp \
    CPP/7zip/Archive/VhdHandler.cpp \
    CPP/7zip/Archive/VmdkHandler.cpp \
    CPP/7zip/Archive/Wim/WimHandler.cpp \
    CPP/7zip/Archive/Wim/WimHandlerOut.cpp \
    CPP/7zip/Archive/Wim/WimIn.cpp \
    CPP/7zip/Archive/Wim/WimRegister.cpp \
    CPP/7zip/Archive/XarHandler.cpp \
    CPP/7zip/Archive/XzHandler.cpp \
    CPP/7zip/Archive/ZHandler.cpp \
    CPP/7zip/Archive/Zip/ZipAddCommon.cpp \
    CPP/7zip/Archive/Zip/ZipHandler.cpp \
    CPP/7zip/Archive/Zip/ZipHandlerOut.cpp \
    CPP/7zip/Archive/Zip/ZipIn.cpp \
    CPP/7zip/Archive/Zip/ZipItem.cpp \
    CPP/7zip/Archive/Zip/ZipOut.cpp \
    CPP/7zip/Archive/Zip/ZipRegister.cpp \
    CPP/7zip/Archive/Zip/ZipUpdate.cpp \
    CPP/7zip/Common/CWrappers.cpp \
    CPP/7zip/Common/CreateCoder.cpp \
    CPP/7zip/Common/FilterCoder.cpp \
    CPP/7zip/Common/InBuffer.cpp \
    CPP/7zip/Common/InOutTempBuffer.cpp \
    CPP/7zip/Common/LimitedStreams.cpp \
    CPP/7zip/Common/MemBlocks.cpp \
    CPP/7zip/Common/MethodId.cpp \
    CPP/7zip/Common/MethodProps.cpp \
    CPP/7zip/Common/OffsetStream.cpp \
    CPP/7zip/Common/OutBuffer.cpp \
    CPP/7zip/Common/OutMemStream.cpp \
    CPP/7zip/Common/ProgressMt.cpp \
    CPP/7zip/Common/ProgressUtils.cpp \
    CPP/7zip/Common/PropId.cpp \
    CPP/7zip/Common/StreamBinder.cpp \
    CPP/7zip/Common/StreamObjects.cpp \
    CPP/7zip/Common/StreamUtils.cpp \
    CPP/7zip/Common/UniqBlocks.cpp \
    CPP/7zip/Common/VirtThread.cpp \
    CPP/7zip/Compress/BZip2Crc.cpp \
    CPP/7zip/Compress/BZip2Decoder.cpp \
    CPP/7zip/Compress/BZip2Encoder.cpp \
    CPP/7zip/Compress/BZip2Register.cpp \
    CPP/7zip/Compress/Bcj2Coder.cpp \
    CPP/7zip/Compress/Bcj2Register.cpp \
    CPP/7zip/Compress/BcjCoder.cpp \
    CPP/7zip/Compress/BcjRegister.cpp \
    CPP/7zip/Compress/BitlDecoder.cpp \
    CPP/7zip/Compress/BranchMisc.cpp \
    CPP/7zip/Compress/BranchRegister.cpp \
    CPP/7zip/Compress/ByteSwap.cpp \
    CPP/7zip/Compress/CodecExports.cpp \
    CPP/7zip/Compress/CopyCoder.cpp \
    CPP/7zip/Compress/CopyRegister.cpp \
    CPP/7zip/Compress/Deflate64Register.cpp \
    CPP/7zip/Compress/DeflateDecoder.cpp \
    CPP/7zip/Compress/DeflateEncoder.cpp \
    CPP/7zip/Compress/DeflateRegister.cpp \
    CPP/7zip/Compress/DeltaFilter.cpp \
    CPP/7zip/Compress/ImplodeDecoder.cpp \
    CPP/7zip/Compress/ImplodeHuffmanDecoder.cpp \
    CPP/7zip/Compress/LzOutWindow.cpp \
    CPP/7zip/Compress/LzhDecoder.cpp \
    CPP/7zip/Compress/Lzma2Decoder.cpp \
    CPP/7zip/Compress/Lzma2Encoder.cpp \
    CPP/7zip/Compress/Lzma2Register.cpp \
    CPP/7zip/Compress/LzmaDecoder.cpp \
    CPP/7zip/Compress/LzmaEncoder.cpp \
    CPP/7zip/Compress/LzmaRegister.cpp \
    CPP/7zip/Compress/LzmsDecoder.cpp \
    CPP/7zip/Compress/LzxDecoder.cpp \
    CPP/7zip/Compress/PpmdDecoder.cpp \
    CPP/7zip/Compress/PpmdEncoder.cpp \
    CPP/7zip/Compress/PpmdRegister.cpp \
    CPP/7zip/Compress/PpmdZip.cpp \
    CPP/7zip/Compress/QuantumDecoder.cpp \
    CPP/7zip/Compress/ShrinkDecoder.cpp \
    CPP/7zip/Compress/ZDecoder.cpp \
    CPP/7zip/Compress/XpressDecoder.cpp \
    CPP/7zip/Compress/ZlibDecoder.cpp \
    CPP/7zip/Compress/ZlibEncoder.cpp \
    CPP/7zip/Crypto/7zAes.cpp \
    CPP/7zip/Crypto/7zAesRegister.cpp \
    CPP/7zip/Crypto/HmacSha1.cpp \
    CPP/7zip/Crypto/HmacSha256.cpp \
    CPP/7zip/Crypto/MyAes.cpp \
    CPP/7zip/Crypto/MyAesReg.cpp \
    CPP/7zip/Crypto/Pbkdf2HmacSha1.cpp \
    CPP/7zip/Crypto/RandGen.cpp \
    CPP/7zip/Crypto/Rar20Crypto.cpp \
    CPP/7zip/Crypto/Rar5Aes.cpp \
    CPP/7zip/Crypto/RarAes.cpp \
    CPP/7zip/Crypto/WzAes.cpp \
    CPP/7zip/Crypto/ZipCrypto.cpp \
    CPP/7zip/Crypto/ZipStrong.cpp \
    CPP/Common/CRC.cpp \
    CPP/Common/CrcReg.cpp \
    CPP/Common/DynLimBuf.cpp \
    CPP/Common/IntToString.cpp \
    CPP/Common/MyMap.cpp \
    CPP/Common/MyString.cpp \
    CPP/Common/MyVector.cpp \
    CPP/Common/MyWindows.cpp \
    CPP/Common/MyXml.cpp \
    CPP/Common/NewHandler.cpp \
    CPP/Common/Sha1Reg.cpp \
    CPP/Common/Sha256Reg.cpp \
    CPP/Common/StringConvert.cpp \
    CPP/Common/StringToInt.cpp \
    CPP/Common/UTFConvert.cpp \
    CPP/Common/Wildcard.cpp \
    CPP/Common/XzCrc64Reg.cpp \
    CPP/Windows/FileDir.cpp \
    CPP/Windows/FileFind.cpp \
    CPP/Windows/FileIO.cpp \
    CPP/Windows/FileName.cpp \
    CPP/Windows/PropVariant.cpp \
    CPP/Windows/PropVariantUtils.cpp \
    CPP/Windows/Synchronization.cpp \
    CPP/Windows/System.cpp \
    CPP/Windows/TimeUtils.cpp \
    CPP/myWindows/wine_date_and_time.cpp \
    C/7zBuf2.c \
    C/7zCrc.c \
    C/7zCrcOpt.c \
    C/7zStream.c \
    C/Aes.c \
    C/Alloc.c \
    C/Bcj2.c \
    C/Bcj2Enc.c \
    C/Blake2s.c \
    C/Bra.c \
    C/Bra86.c \
    C/BraIA64.c \
    C/BwtSort.c \
    C/CpuArch.c \
    C/Delta.c \
    C/HuffEnc.c \
    C/LzFind.c \
    C/LzFindMt.c \
    C/Lzma2Dec.c \
    C/Lzma2Enc.c \
    C/LzmaDec.c \
    C/LzmaEnc.c \
    C/MtCoder.c \
    C/Ppmd7.c \
    C/Ppmd7Dec.c \
    C/Ppmd7Enc.c \
    C/Ppmd8.c \
    C/Ppmd8Dec.c \
    C/Ppmd8Enc.c \
    C/Sha1.c \
    C/Sha256.c \
    C/Sort.c \
    C/Threads.c \
    C/Xz.c \
    C/XzCrc64.c \
    C/XzCrc64Opt.c \
    C/XzDec.c \
    C/XzEnc.c \
    C/XzIn.c

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := 7z
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := $(common_cflags)
LOCAL_C_INCLUDES := $(common_c_includes)
LOCAL_ARM_MODE := arm
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_SRC_FILES := \
    CPP/7zip/Archive/Common/OutStreamWithCRC.cpp \
    CPP/7zip/Common/CreateCoder.cpp \
    CPP/7zip/Common/FilePathAutoRename.cpp \
    CPP/7zip/Common/FileStreams.cpp \
    CPP/7zip/Common/FilterCoder.cpp \
    CPP/7zip/Common/LimitedStreams.cpp \
    CPP/7zip/Common/MethodProps.cpp \
    CPP/7zip/Common/ProgressUtils.cpp \
    CPP/7zip/Common/PropId.cpp \
    CPP/7zip/Common/StreamObjects.cpp \
    CPP/7zip/Common/StreamUtils.cpp \
    CPP/7zip/Common/UniqBlocks.cpp \
    CPP/7zip/Compress/CopyCoder.cpp \
    CPP/7zip/UI/Common/ArchiveCommandLine.cpp \
    CPP/7zip/UI/Common/ArchiveExtractCallback.cpp \
    CPP/7zip/UI/Common/ArchiveOpenCallback.cpp \
    CPP/7zip/UI/Common/Bench.cpp \
    CPP/7zip/UI/Common/DefaultName.cpp \
    CPP/7zip/UI/Common/EnumDirItems.cpp \
    CPP/7zip/UI/Common/Extract.cpp \
    CPP/7zip/UI/Common/ExtractingFilePath.cpp \
    CPP/7zip/UI/Common/HashCalc.cpp \
    CPP/7zip/UI/Common/LoadCodecs.cpp \
    CPP/7zip/UI/Common/OpenArchive.cpp \
    CPP/7zip/UI/Common/PropIDUtils.cpp \
    CPP/7zip/UI/Common/SetProperties.cpp \
    CPP/7zip/UI/Common/SortUtils.cpp \
    CPP/7zip/UI/Common/TempFiles.cpp \
    CPP/7zip/UI/Common/Update.cpp \
    CPP/7zip/UI/Common/UpdateAction.cpp \
    CPP/7zip/UI/Common/UpdateCallback.cpp \
    CPP/7zip/UI/Common/UpdatePair.cpp \
    CPP/7zip/UI/Common/UpdateProduce.cpp \
    CPP/7zip/UI/Console/BenchCon.cpp \
    CPP/7zip/UI/Console/ConsoleClose.cpp \
    CPP/7zip/UI/Console/ExtractCallbackConsole.cpp \
    CPP/7zip/UI/Console/HashCon.cpp \
    CPP/7zip/UI/Console/List.cpp \
    CPP/7zip/UI/Console/Main.cpp \
    CPP/7zip/UI/Console/MainAr.cpp \
    CPP/7zip/UI/Console/OpenCallbackConsole.cpp \
    CPP/7zip/UI/Console/PercentPrinter.cpp \
    CPP/7zip/UI/Console/UpdateCallbackConsole.cpp \
    CPP/7zip/UI/Console/UserInputUtils.cpp \
    CPP/Common/CRC.cpp \
    CPP/Common/CommandLineParser.cpp \
    CPP/Common/IntToString.cpp \
    CPP/Common/ListFileUtils.cpp \
    CPP/Common/MyString.cpp \
    CPP/Common/MyVector.cpp \
    CPP/Common/MyWindows.cpp \
    CPP/Common/NewHandler.cpp \
    CPP/Common/StdInStream.cpp \
    CPP/Common/StdOutStream.cpp \
    CPP/Common/StringConvert.cpp \
    CPP/Common/StringToInt.cpp \
    CPP/Common/UTFConvert.cpp \
    CPP/Common/Wildcard.cpp \
    CPP/Windows/DLL.cpp \
    CPP/Windows/ErrorMsg.cpp \
    CPP/Windows/FileDir.cpp \
    CPP/Windows/FileFind.cpp \
    CPP/Windows/FileIO.cpp \
    CPP/Windows/FileName.cpp \
    CPP/Windows/PropVariant.cpp \
    CPP/Windows/PropVariantConv.cpp \
    CPP/Windows/System.cpp \
    CPP/Windows/TimeUtils.cpp \
    CPP/myWindows/myAddExeFlag.cpp \
    CPP/myWindows/mySplitCommandLine.cpp \
    CPP/myWindows/wine_date_and_time.cpp \
    C/7zCrc.c \
    C/7zCrcOpt.c \
    C/Alloc.c \
    C/CpuArch.c \
    C/Threads.c \

include $(BUILD_EXECUTABLE)
