from cython_gsl cimport *

cdef extern from "gsl/gsl_qrng.h":

  ctypedef struct gsl_qrng
  ctypedef struct gsl_qrng_type
  gsl_qrng_type * gsl_qrng_niederreiter_2
  gsl_qrng_type * gsl_qrng_sobol

  gsl_qrng *  gsl_qrng_alloc(gsl_qrng_type * T, unsigned int d) nogil

  void  gsl_qrng_free(gsl_qrng * q) nogil

  void  gsl_qrng_init(gsl_qrng * q) nogil

  int  gsl_qrng_get(gsl_qrng * q, double x[]) nogil

  char *  gsl_qrng_name(gsl_qrng * q) nogil

  size_t  gsl_qrng_size(gsl_qrng * q) nogil

  void *  gsl_qrng_state(gsl_qrng * q) nogil

  int  gsl_qrng_memcpy(gsl_qrng * dest, gsl_qrng * src) nogil

  gsl_qrng *  gsl_qrng_clone(gsl_qrng * q) nogil

