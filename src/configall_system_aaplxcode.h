/* This is the header file for the Apple (Xcode Clang) compiler, defining all
 * system and compiler dependent configuration macros */

/* Define to 1 if cstdint is available for CoinUtils */
#define COINUTILS_HAS_CSTDINT 1

/* Define to 1 if stdint.h is available for CoinUtils */
#define COINUTILS_HAS_STDINT_H 1

/* Default maximum pooled allocation size */
#define COINUTILS_MEMPOOL_MAXPOOLED -1

/* Define to 1 CoinUtils should override global new/delete */
/* #undef COINUTILS_MEMPOOL_OVERRIDE_NEW */

/* Define to 1 if the thread aware version of CoinUtils should be compiled */
/* #undef COINUTILS_PTHREADS */

/* SVN revision number of project */
/* #undef COINUTILS_SVN_REV */

/* Define to the debug sanity check level (0 is no test) */
#define COIN_COINUTILS_CHECKLEVEL 0

/* Define to the debug verbosity level (0 is no output) */
#define COIN_COINUTILS_VERBOSITY 0

/* Define to be the name of C-function for Inf check */
/* #undef COIN_C_FINITE */

/* Define to be the name of C-function for NaN check */
#define COIN_C_ISNAN std::isnan

/* If defined, the BLAS Library is available. */
/* #undef COIN_HAS_BLAS */

/* Define to 1 if bzlib is available */
#define COIN_HAS_BZLIB 1

/* Define to 1 if the Glpk package is available */
/* #undef COIN_HAS_GLPK */

/* If defined, the LAPACK Library is available. */
/* #undef COIN_HAS_LAPACK */

/* Define to 1 if the Netlib package is available */
#define COIN_HAS_NETLIB 1

/* Define to 1 if readline is available */
/* #undef COIN_HAS_READLINE */

/* Define to 1 if the Sample package is available */
#define COIN_HAS_SAMPLE 1

/* Define to 1 if zlib is available */
#define COIN_HAS_ZLIB 1

/* Define to 64bit integer type */
#define COIN_INT64_T int64_t

/* Define to integer type capturing pointer */
#define COIN_INTPTR_T intptr_t

/* Define to 64bit unsigned integer type */
#define COIN_UINT64_T int64_t

/* Define to dummy `main' function (if any) required to link to the Fortran
 libraries. */
/* #undef F77_DUMMY_MAIN */

/* Define to a macro mangling the given C identifier (in lower and upper
 case), which must not contain underscores, for linking with Fortran. */
/* #undef F77_FUNC */

/* As F77_FUNC, but for C identifiers containing underscores. */
/* #undef F77_FUNC_ */

/* Define if F77 and FC dummy `main' functions are identical. */
/* #undef FC_DUMMY_MAIN_EQ_F77 */

/* Define to 1 if you have the <bzlib.h> header file. */
#define HAVE_BZLIB_H 1

/* Define to 1 if you have the <cfloat> header file. */
#define HAVE_CFLOAT 1

/* Define to 1 if you have the <cieeefp> header file. */
/* #undef HAVE_CIEEEFP */

/* Define to 1 if you have the <cinttypes> header file. */
#define HAVE_CINTTYPES 1

/* Define to 1 if you have the <cmath> header file. */
#define HAVE_CMATH 1

/* Define to 1 if you have the <cstdint> header file. */
#define HAVE_CSTDINT 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the <endian.h> header file. */
/* #undef HAVE_ENDIAN_H */

/* Define to 1 if you have the <float.h> header file. */
/* #undef HAVE_FLOAT_H */

/* Define to 1 if you have the <ieeefp.h> header file. */
/* #undef HAVE_IEEEFP_H */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the <math.h> header file. */
/* #undef HAVE_MATH_H */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the <readline/readline.h> header file. */
/* #undef HAVE_READLINE_READLINE_H */

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the <zlib.h> header file. */
#define HAVE_ZLIB_H 1

