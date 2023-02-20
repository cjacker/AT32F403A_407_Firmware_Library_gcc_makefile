######################################
# target
######################################
TARGET = at32f403acgu7

TARGET_DEFS = -DAT32F403ACGU7

USER_SOURCES = \
	user/at32f403a_407_int.c \
	user/at32f403a_407_clock.c \
	user/main.c

USER_INCLUDES = -Iuser

######################################
# building variables
######################################
# debug build?
DEBUG = 1
# optimization for size
OPT = -Os


#######################################
# paths
#######################################
# Build path
BUILD_DIR = build

######################################
# source
######################################
# C sources
C_SOURCES =  \
libraries/drivers/src/at32f403a_407_usart.c \
libraries/drivers/src/at32f403a_407_usb.c \
libraries/drivers/src/at32f403a_407_crm.c \
libraries/drivers/src/at32f403a_407_gpio.c \
libraries/drivers/src/at32f403a_407_flash.c \
libraries/drivers/src/at32f403a_407_dac.c \
libraries/drivers/src/at32f403a_407_spi.c \
libraries/drivers/src/at32f403a_407_rtc.c \
libraries/drivers/src/at32f403a_407_emac.c \
libraries/drivers/src/at32f403a_407_dma.c \
libraries/drivers/src/at32f403a_407_xmc.c \
libraries/drivers/src/at32f403a_407_can.c \
libraries/drivers/src/at32f403a_407_sdio.c \
libraries/drivers/src/at32f403a_407_exint.c \
libraries/drivers/src/at32f403a_407_adc.c \
libraries/drivers/src/at32f403a_407_acc.c \
libraries/drivers/src/at32f403a_407_tmr.c \
libraries/drivers/src/at32f403a_407_pwc.c \
libraries/drivers/src/at32f403a_407_wwdt.c \
libraries/drivers/src/at32f403a_407_debug.c \
libraries/drivers/src/at32f403a_407_crc.c \
libraries/drivers/src/at32f403a_407_wdt.c \
libraries/drivers/src/at32f403a_407_bpr.c \
libraries/drivers/src/at32f403a_407_misc.c \
libraries/drivers/src/at32f403a_407_i2c.c \
libraries/cmsis/cm4/device_support/system_at32f403a_407.c \
$(USER_SOURCES)

#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_mult_fast_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_scale_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_mult_fast_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_mult_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_init_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_sub_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_add_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_mult_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_scale_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_trans_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_add_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/MatrixFunctions.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_init_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_inverse_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_trans_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_init_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_sub_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_mult_q31.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_trans_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_sub_q15.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_inverse_f64.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_add_f32.c \
#libraries/cmsis/dsp/Source/MatrixFunctions/arm_mat_scale_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_negate_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_and_u8.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_offset_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_xor_u16.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_scale_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_or_u8.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_add_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_dot_prod_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_shift_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_mult_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_xor_u8.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_scale_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_offset_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_xor_u32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_abs_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_mult_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_offset_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_not_u8.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_dot_prod_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/BasicMathFunctions.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_and_u32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_shift_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_offset_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_negate_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_mult_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_mult_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_not_u16.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_abs_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_abs_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_negate_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_negate_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_or_u16.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_sub_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_or_u32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_add_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_add_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_scale_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_sub_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_dot_prod_q31.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_sub_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_abs_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_and_u16.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_shift_q15.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_scale_q7.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_add_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_sub_f32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_not_u32.c \
#libraries/cmsis/dsp/Source/BasicMathFunctions/arm_dot_prod_f32.c \
#libraries/cmsis/dsp/Source/BayesFunctions/BayesFunctions.c \
#libraries/cmsis/dsp/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/SVMFunctions.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_linear_init_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
#libraries/cmsis/dsp/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_power_q7.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_power_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_kullback_leibler_f64.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_var_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_min_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_power_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/StatisticsFunctions.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_mean_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_std_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_mean_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_std_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_var_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_mean_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_var_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_min_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_std_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_max_q7.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_power_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_rms_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_entropy_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_logsumexp_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_max_no_idx_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_max_q31.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_mean_q7.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_min_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_min_q7.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_entropy_f64.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_rms_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_max_q15.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_rms_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_max_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_kullback_leibler_f32.c \
#libraries/cmsis/dsp/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/ComplexMathFunctions.c \
#libraries/cmsis/dsp/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_opt_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_opt_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_init_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_fast_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/FilteringFunctions.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_init_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_interpolate_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_lattice_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_iir_lattice_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_init_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_fast_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_conv_partial_q31.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_correlate_opt_q7.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_init_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_sparse_init_q15.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_lms_norm_f32.c \
#libraries/cmsis/dsp/Source/FilteringFunctions/arm_fir_decimate_init_q31.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_cityblock_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_cosine_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_rogerstanimoto_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_jaccard_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_chebyshev_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_braycurtis_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_euclidean_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/DistanceFunctions.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_minkowski_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_yule_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_boolean_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_canberra_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_sokalmichener_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_sokalsneath_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_dice_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_correlation_distance_f32.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_russellrao_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_kulsinski_distance.c \
#libraries/cmsis/dsp/Source/DistanceFunctions/arm_hamming_distance.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q7_to_float.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_bitonic_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_insertion_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_copy_q15.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_sort_init_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_spline_interp_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_weighted_sum_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_heap_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_copy_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_fill_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_copy_q7.c \
#libraries/cmsis/dsp/Source/SupportFunctions/SupportFunctions.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_float_to_q15.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_fill_q31.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q15_to_q31.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_barycenter_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q15_to_float.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_spline_interp_init_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_copy_q31.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_fill_q15.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_selection_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q7_to_q15.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_float_to_q7.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q31_to_q7.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q31_to_q15.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q31_to_float.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q15_to_q7.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_bubble_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_fill_q7.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_quick_sort_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_merge_sort_init_f32.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_float_to_q31.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_q7_to_q31.c \
#libraries/cmsis/dsp/Source/SupportFunctions/arm_merge_sort_f32.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/FastMathFunctions.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_vlog_f32.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_cos_f32.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_cos_q15.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_sin_q15.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_sin_f32.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_cos_q31.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_sqrt_q15.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_vexp_f32.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_sin_q31.c \
#libraries/cmsis/dsp/Source/FastMathFunctions/arm_sqrt_q31.c \
#libraries/cmsis/dsp/Source/CommonTables/CommonTables.c \
#libraries/cmsis/dsp/Source/CommonTables/arm_mve_tables.c \
#libraries/cmsis/dsp/Source/CommonTables/arm_common_tables.c \
#libraries/cmsis/dsp/Source/CommonTables/arm_const_structs.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_sin_cos_q31.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_reset_f32.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_init_f32.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_init_q15.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_reset_q31.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/ControllerFunctions.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_sin_cos_f32.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_reset_q15.c \
#libraries/cmsis/dsp/Source/ControllerFunctions/arm_pid_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/TransformFunctions.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_init_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_init_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_init_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_init_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_fast_init_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_init_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_fast_f64.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_init_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_fast_init_f64.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_init_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix4_init_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_fast_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix8_f32.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_rfft_init_q15.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_init_f64.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_bitreversal.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_bitreversal2.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_f64.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_cfft_radix2_init_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_q31.c \
#libraries/cmsis/dsp/Source/TransformFunctions/arm_dct4_init_f32.c \
#libraries/cmsis/dsp/ComputeLibrary/Source/arm_cl_tables.c \

# ASM sources
ASM_SOURCES = libraries/cmsis/cm4/device_support/startup/gcc/startup_at32f403a_407.s


#######################################
# binaries
#######################################
PREFIX = arm-none-eabi-
# The gcc compiler bin path can be either defined in make command via GCC_PATH variable (> make GCC_PATH=xxx)
# either it can be added to the PATH environment variable.
ifdef GCC_PATH
CC = $(GCC_PATH)/$(PREFIX)gcc
AS = $(GCC_PATH)/$(PREFIX)gcc -x assembler-with-cpp
CP = $(GCC_PATH)/$(PREFIX)objcopy
SZ = $(GCC_PATH)/$(PREFIX)size
else
CC = $(PREFIX)gcc
AS = $(PREFIX)gcc -x assembler-with-cpp
CP = $(PREFIX)objcopy
SZ = $(PREFIX)size
endif
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S
 
#######################################
# CFLAGS
#######################################
# cpu
CPU = -mcpu=cortex-m4

# fpu
# NONE for Cortex-M0/M0+/M3

# float-abi


# mcu
MCU = $(CPU) -mthumb $(FPU) $(FLOAT-ABI)

# macros for gcc
# AS defines
AS_DEFS = 

# C defines
C_DEFS =  \
-DUSE_STDPERIPH_DRIVER \
$(TARGET_DEFS)

# AS includes
AS_INCLUDES = 

# C includes
C_INCLUDES =  \
-Ilibraries/drivers/inc \
-Ilibraries/cmsis/dsp/PrivateInclude \
-Ilibraries/cmsis/dsp/include \
-Ilibraries/cmsis/dsp/Source/DistanceFunctions \
-Ilibraries/cmsis/dsp/ComputeLibrary \
-Ilibraries/cmsis/dsp/ComputeLibrary/Include \
-Ilibraries/cmsis/cm4/device_support \
-Ilibraries/cmsis/cm4/core_support \
$(USER_INCLUDES)

# compile gcc flags
ASFLAGS = $(MCU) $(AS_DEFS) $(AS_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

CFLAGS = $(MCU) $(C_DEFS) $(C_INCLUDES) $(OPT) -Wall -fdata-sections -ffunction-sections

ifeq ($(DEBUG), 1)
CFLAGS += -g -gdwarf-2
endif


# Generate dependency information
CFLAGS += -MMD -MP -MF"$(@:%.o=%.d)"


#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = libraries/cmsis/cm4/device_support/startup/gcc/linker/AT32F403AxG_FLASH.ld

# libraries
LIBS = -lc -lm -lnosys 
LIBDIR = 
LDFLAGS = $(MCU) -u_printf_float -specs=nosys.specs -T$(LDSCRIPT) $(LIBDIR) $(LIBS) -Wl,-Map=$(BUILD_DIR)/$(TARGET).map,--cref -Wl,--gc-sections

# default action: build all
all: $(BUILD_DIR)/$(TARGET).elf $(BUILD_DIR)/$(TARGET).hex $(BUILD_DIR)/$(TARGET).bin


#######################################
# build the application
#######################################
# list of objects
OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))
# list of ASM program objects
OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

$(BUILD_DIR)/%.o: %.c Makefile | $(BUILD_DIR) 
	$(CC) -c $(CFLAGS) -Wa,-a,-ad,-alms=$(BUILD_DIR)/$(notdir $(<:.c=.lst)) $< -o $@

$(BUILD_DIR)/%.o: %.s Makefile | $(BUILD_DIR)
	$(AS) -c $(CFLAGS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.hex: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(HEX) $< $@
	
$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@	
	
$(BUILD_DIR):
	mkdir $@		

#######################################
# program
#######################################
program:
	openocd -f /usr/share/openocd/scripts/interface/cmsis-dap.cfg -f /usr/share/openocd/scripts/target/at32f403axG.cfg -c "program build/$(TARGET).elf verify reset exit"

#######################################
# clean up
#######################################
clean:
	-rm -fR $(BUILD_DIR)

#######################################
# dependencies
#######################################
-include $(wildcard $(BUILD_DIR)/*.d)

# *** EOF ***
