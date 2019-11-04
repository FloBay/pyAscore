from ModifiedPeptide cimport ModifiedPeptide
from Spectra cimport BinnedSpectra
from libcpp.string cimport string

cdef extern from "cpp/Ascore.cpp":
    pass

cdef extern from "cpp/Ascore.h" namespace "ptmscoring":
    cdef cppclass Ascore:
        Ascore() except +
        void score(const BinnedSpectra &, const ModifiedPeptide &)
        string getBestSequence();
        float getBestScore();