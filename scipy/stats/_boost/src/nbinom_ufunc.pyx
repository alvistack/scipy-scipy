# distutils: language = c++
# cython: language_level=3

# This file was generated by stats/_boost/include/code_gen.py
# All modifications to this file will be overwritten.

from numpy cimport (
    import_array,
    import_ufunc,
    PyUFunc_FromFuncAndData,
    PyUFuncGenericFunction,
    PyUFunc_None,
    NPY_FLOAT,
    NPY_DOUBLE,
    NPY_LONGDOUBLE
)
from templated_pyufunc cimport PyUFunc_T
from func_defs cimport (
    boost_pdf2,
    boost_cdf2,
    boost_sf2,
    boost_ppf2,
    boost_isf2,
    boost_mean2,
    boost_variance2,
    boost_skewness2,
    boost_kurtosis_excess2,
)
cdef extern from "boost/math/distributions/negative_binomial.hpp" namespace "boost::math" nogil:
    cdef cppclass negative_binomial_distribution nogil:
        pass

# Workaround for Cython's lack of non-type template parameter
# support
cdef extern from * nogil:
    ctypedef int NINPUTS2 "2"
    ctypedef int NINPUTS3 "3"

_DUMMY = ""
import_array()
import_ufunc()
ctypedef long double longdouble


cdef PyUFuncGenericFunction loop_func0[3]
cdef void* func0[1*3]
cdef char types0[4*3]
loop_func0[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS3]
func0[0] = <void*>boost_pdf2[negative_binomial_distribution, float, float, float]
types0[0+0*4] = NPY_FLOAT
types0[1+0*4] = NPY_FLOAT
types0[2+0*4] = NPY_FLOAT
types0[3+0*4] = NPY_FLOAT
loop_func0[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS3]
func0[1] = <void*>boost_pdf2[negative_binomial_distribution, double, double, double]
types0[0+1*4] = NPY_DOUBLE
types0[1+1*4] = NPY_DOUBLE
types0[2+1*4] = NPY_DOUBLE
types0[3+1*4] = NPY_DOUBLE
loop_func0[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS3]
func0[2] = <void*>boost_pdf2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types0[0+2*4] = NPY_LONGDOUBLE
types0[1+2*4] = NPY_LONGDOUBLE
types0[2+2*4] = NPY_LONGDOUBLE
types0[3+2*4] = NPY_LONGDOUBLE

_nbinom_pdf = PyUFunc_FromFuncAndData(
    loop_func0,
    func0,
    types0,
    3,  # number of supported input types
    3,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_pdf",  # function name
    ("_nbinom_pdf(x, n, p) -> computes "
     "pdf of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func1[3]
cdef void* func1[1*3]
cdef char types1[4*3]
loop_func1[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS3]
func1[0] = <void*>boost_cdf2[negative_binomial_distribution, float, float, float]
types1[0+0*4] = NPY_FLOAT
types1[1+0*4] = NPY_FLOAT
types1[2+0*4] = NPY_FLOAT
types1[3+0*4] = NPY_FLOAT
loop_func1[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS3]
func1[1] = <void*>boost_cdf2[negative_binomial_distribution, double, double, double]
types1[0+1*4] = NPY_DOUBLE
types1[1+1*4] = NPY_DOUBLE
types1[2+1*4] = NPY_DOUBLE
types1[3+1*4] = NPY_DOUBLE
loop_func1[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS3]
func1[2] = <void*>boost_cdf2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types1[0+2*4] = NPY_LONGDOUBLE
types1[1+2*4] = NPY_LONGDOUBLE
types1[2+2*4] = NPY_LONGDOUBLE
types1[3+2*4] = NPY_LONGDOUBLE

_nbinom_cdf = PyUFunc_FromFuncAndData(
    loop_func1,
    func1,
    types1,
    3,  # number of supported input types
    3,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_cdf",  # function name
    ("_nbinom_cdf(x, n, p) -> computes "
     "cdf of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func2[3]
cdef void* func2[1*3]
cdef char types2[4*3]
loop_func2[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS3]
func2[0] = <void*>boost_sf2[negative_binomial_distribution, float, float, float]
types2[0+0*4] = NPY_FLOAT
types2[1+0*4] = NPY_FLOAT
types2[2+0*4] = NPY_FLOAT
types2[3+0*4] = NPY_FLOAT
loop_func2[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS3]
func2[1] = <void*>boost_sf2[negative_binomial_distribution, double, double, double]
types2[0+1*4] = NPY_DOUBLE
types2[1+1*4] = NPY_DOUBLE
types2[2+1*4] = NPY_DOUBLE
types2[3+1*4] = NPY_DOUBLE
loop_func2[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS3]
func2[2] = <void*>boost_sf2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types2[0+2*4] = NPY_LONGDOUBLE
types2[1+2*4] = NPY_LONGDOUBLE
types2[2+2*4] = NPY_LONGDOUBLE
types2[3+2*4] = NPY_LONGDOUBLE

_nbinom_sf = PyUFunc_FromFuncAndData(
    loop_func2,
    func2,
    types2,
    3,  # number of supported input types
    3,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_sf",  # function name
    ("_nbinom_sf(x, n, p) -> computes "
     "sf of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func3[3]
cdef void* func3[1*3]
cdef char types3[4*3]
loop_func3[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS3]
func3[0] = <void*>boost_ppf2[negative_binomial_distribution, float, float, float]
types3[0+0*4] = NPY_FLOAT
types3[1+0*4] = NPY_FLOAT
types3[2+0*4] = NPY_FLOAT
types3[3+0*4] = NPY_FLOAT
loop_func3[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS3]
func3[1] = <void*>boost_ppf2[negative_binomial_distribution, double, double, double]
types3[0+1*4] = NPY_DOUBLE
types3[1+1*4] = NPY_DOUBLE
types3[2+1*4] = NPY_DOUBLE
types3[3+1*4] = NPY_DOUBLE
loop_func3[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS3]
func3[2] = <void*>boost_ppf2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types3[0+2*4] = NPY_LONGDOUBLE
types3[1+2*4] = NPY_LONGDOUBLE
types3[2+2*4] = NPY_LONGDOUBLE
types3[3+2*4] = NPY_LONGDOUBLE

_nbinom_ppf = PyUFunc_FromFuncAndData(
    loop_func3,
    func3,
    types3,
    3,  # number of supported input types
    3,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_ppf",  # function name
    ("_nbinom_ppf(x, n, p) -> computes "
     "ppf of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func4[3]
cdef void* func4[1*3]
cdef char types4[4*3]
loop_func4[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS3]
func4[0] = <void*>boost_isf2[negative_binomial_distribution, float, float, float]
types4[0+0*4] = NPY_FLOAT
types4[1+0*4] = NPY_FLOAT
types4[2+0*4] = NPY_FLOAT
types4[3+0*4] = NPY_FLOAT
loop_func4[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS3]
func4[1] = <void*>boost_isf2[negative_binomial_distribution, double, double, double]
types4[0+1*4] = NPY_DOUBLE
types4[1+1*4] = NPY_DOUBLE
types4[2+1*4] = NPY_DOUBLE
types4[3+1*4] = NPY_DOUBLE
loop_func4[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS3]
func4[2] = <void*>boost_isf2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types4[0+2*4] = NPY_LONGDOUBLE
types4[1+2*4] = NPY_LONGDOUBLE
types4[2+2*4] = NPY_LONGDOUBLE
types4[3+2*4] = NPY_LONGDOUBLE

_nbinom_isf = PyUFunc_FromFuncAndData(
    loop_func4,
    func4,
    types4,
    3,  # number of supported input types
    3,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_isf",  # function name
    ("_nbinom_isf(x, n, p) -> computes "
     "isf of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func5[3]
cdef void* func5[1*3]
cdef char types5[3*3]
loop_func5[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS2]
func5[0] = <void*>boost_mean2[negative_binomial_distribution, float, float, float]
types5[0+0*3] = NPY_FLOAT
types5[1+0*3] = NPY_FLOAT
types5[2+0*3] = NPY_FLOAT
loop_func5[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS2]
func5[1] = <void*>boost_mean2[negative_binomial_distribution, double, double, double]
types5[0+1*3] = NPY_DOUBLE
types5[1+1*3] = NPY_DOUBLE
types5[2+1*3] = NPY_DOUBLE
loop_func5[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS2]
func5[2] = <void*>boost_mean2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types5[0+2*3] = NPY_LONGDOUBLE
types5[1+2*3] = NPY_LONGDOUBLE
types5[2+2*3] = NPY_LONGDOUBLE

_nbinom_mean = PyUFunc_FromFuncAndData(
    loop_func5,
    func5,
    types5,
    3,  # number of supported input types
    2,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_mean",  # function name
    ("_nbinom_mean(n, p) -> computes "
     "mean of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func6[3]
cdef void* func6[1*3]
cdef char types6[3*3]
loop_func6[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS2]
func6[0] = <void*>boost_variance2[negative_binomial_distribution, float, float, float]
types6[0+0*3] = NPY_FLOAT
types6[1+0*3] = NPY_FLOAT
types6[2+0*3] = NPY_FLOAT
loop_func6[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS2]
func6[1] = <void*>boost_variance2[negative_binomial_distribution, double, double, double]
types6[0+1*3] = NPY_DOUBLE
types6[1+1*3] = NPY_DOUBLE
types6[2+1*3] = NPY_DOUBLE
loop_func6[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS2]
func6[2] = <void*>boost_variance2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types6[0+2*3] = NPY_LONGDOUBLE
types6[1+2*3] = NPY_LONGDOUBLE
types6[2+2*3] = NPY_LONGDOUBLE

_nbinom_variance = PyUFunc_FromFuncAndData(
    loop_func6,
    func6,
    types6,
    3,  # number of supported input types
    2,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_variance",  # function name
    ("_nbinom_variance(n, p) -> computes "
     "variance of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func7[3]
cdef void* func7[1*3]
cdef char types7[3*3]
loop_func7[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS2]
func7[0] = <void*>boost_skewness2[negative_binomial_distribution, float, float, float]
types7[0+0*3] = NPY_FLOAT
types7[1+0*3] = NPY_FLOAT
types7[2+0*3] = NPY_FLOAT
loop_func7[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS2]
func7[1] = <void*>boost_skewness2[negative_binomial_distribution, double, double, double]
types7[0+1*3] = NPY_DOUBLE
types7[1+1*3] = NPY_DOUBLE
types7[2+1*3] = NPY_DOUBLE
loop_func7[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS2]
func7[2] = <void*>boost_skewness2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types7[0+2*3] = NPY_LONGDOUBLE
types7[1+2*3] = NPY_LONGDOUBLE
types7[2+2*3] = NPY_LONGDOUBLE

_nbinom_skewness = PyUFunc_FromFuncAndData(
    loop_func7,
    func7,
    types7,
    3,  # number of supported input types
    2,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_skewness",  # function name
    ("_nbinom_skewness(n, p) -> computes "
     "skewness of nbinom distribution"),
    0  # unused
)

cdef PyUFuncGenericFunction loop_func8[3]
cdef void* func8[1*3]
cdef char types8[3*3]
loop_func8[0] = <PyUFuncGenericFunction>PyUFunc_T[float, NINPUTS2]
func8[0] = <void*>boost_kurtosis_excess2[negative_binomial_distribution, float, float, float]
types8[0+0*3] = NPY_FLOAT
types8[1+0*3] = NPY_FLOAT
types8[2+0*3] = NPY_FLOAT
loop_func8[1] = <PyUFuncGenericFunction>PyUFunc_T[double, NINPUTS2]
func8[1] = <void*>boost_kurtosis_excess2[negative_binomial_distribution, double, double, double]
types8[0+1*3] = NPY_DOUBLE
types8[1+1*3] = NPY_DOUBLE
types8[2+1*3] = NPY_DOUBLE
loop_func8[2] = <PyUFuncGenericFunction>PyUFunc_T[longdouble, NINPUTS2]
func8[2] = <void*>boost_kurtosis_excess2[negative_binomial_distribution, longdouble, longdouble, longdouble]
types8[0+2*3] = NPY_LONGDOUBLE
types8[1+2*3] = NPY_LONGDOUBLE
types8[2+2*3] = NPY_LONGDOUBLE

_nbinom_kurtosis_excess = PyUFunc_FromFuncAndData(
    loop_func8,
    func8,
    types8,
    3,  # number of supported input types
    2,  # number of input args
    1,  # number of output args
    PyUFunc_None,  # `identity` element, never mind this
    "_nbinom_kurtosis_excess",  # function name
    ("_nbinom_kurtosis_excess(n, p) -> computes "
     "kurtosis_excess of nbinom distribution"),
    0  # unused
)
