cimport quantlib.termstructures._yield_term_structure as _yts
from libcpp cimport bool as cbool
from quantlib.handle cimport RelinkableHandle
from quantlib.observable cimport Observable

cdef class YieldTermStructure(Observable):
    cdef RelinkableHandle[_yts.YieldTermStructure] _thisptr
    cdef _yts.YieldTermStructure* _get_term_structure(self) except NULL
