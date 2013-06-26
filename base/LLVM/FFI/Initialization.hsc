{-# LANGUAGE CPP, ForeignFunctionInterface, EmptyDataDecls #-}

module LLVM.FFI.Initialization where
import Foreign.C.String(CString)
#if __GLASGOW_HASKELL__ >= 704
import Foreign.C.Types(CInt(..))
#else
import Foreign.C.Types(CInt)
#endif
import Foreign.Ptr(Ptr)

import LLVM.FFI.Core

foreign import ccall unsafe "LLVMInitializeCore" initializeCore
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeTransformUtils" InitializeTransformUtils
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeScalarOpts" InitializeScalarOpts
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeObjCARCOpts" InitializeObjCARCOpts
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeVectorization" InitializeVectorization
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeInstCombine" InitializeInstCombine
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeIPO" InitializeIPO
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeInstrumentation" InitializeInstrumentation
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeAnalysis" InitializeAnalysis
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeIPA" InitializeIPA
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeCodeGen" InitializeCodeGen
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeTarget" InitializeTarget
    :: PassRegistryRef -> IO ()
