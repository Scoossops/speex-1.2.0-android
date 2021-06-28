LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := speex
LOCAL_MODULE_FILENAME := libspeex

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src/include	\
	$(LOCAL_PATH)/src/libspeex

LOCAL_SRC_FILES :=\
	src/libspeex/bits.c \
	src/libspeex/cb_search.c \
	src/libspeex/exc_5_64_table.c \
	src/libspeex/exc_5_256_table.c \
	src/libspeex/exc_8_128_table.c \
	src/libspeex/exc_10_16_table.c \
	src/libspeex/exc_10_32_table.c \
	src/libspeex/exc_20_32_table.c \
	src/libspeex/exc_5_256_table.c \
	src/libspeex/fftwrap.c \
	src/libspeex/filters.c \
	src/libspeex/gain_table.c \
	src/libspeex/gain_table_lbr.c \
	src/libspeex/hexc_10_32_table.c \
	src/libspeex/hexc_table.c \
	src/libspeex/high_lsp_tables.c \
	src/libspeex/kiss_fft.c \
	src/libspeex/kiss_fftr.c \
	src/libspeex/lpc.c \
	src/libspeex/lsp.c \
	src/libspeex/lsp_tables_nb.c \
	src/libspeex/ltp.c \
	src/libspeex/modes.c \
	src/libspeex/modes_wb.c \
	src/libspeex/nb_celp.c \
	src/libspeex/quant_lsp.c \
	src/libspeex/sb_celp.c \
	src/libspeex/smallft.c \
	src/libspeex/speex.c \
	src/libspeex/speex_callbacks.c \
	src/libspeex/speex_header.c \
	src/libspeex/stereo.c \
	src/libspeex/vbr.c \
	src/libspeex/vorbis_psy.c \
	src/libspeex/vq.c \
	src/libspeex/window.c


#LOCAL_EXPORT_C_INCLUDES :=
#LOCAL_EXPORT_LDLIBS :=


LOCAL_CFLAGS :=  -fexceptions -frtti
LOCAL_CFLAGS := -DFIXED_POINT -DUSE_KISS_FFT -DEXPORT="" -UHAVE_CONFIG_H


LOCAL_LDLIBS := -llog -lz

#select shared or static library
#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)



