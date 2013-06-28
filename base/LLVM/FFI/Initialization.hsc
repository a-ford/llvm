{-# LANGUAGE CPP, ForeignFunctionInterface #-}

module LLVM.FFI.Initialization where
import Foreign.Ptr(Ptr)

import LLVM.FFI.Core

foreign import ccall unsafe "LLVMInitializeCore" initializeCore
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeTransformUtils" initializeTransformUtils
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeScalarOpts" initializeScalarOpts
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeObjCARCOpts" initializeObjCARCOpts
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeVectorization" initializeVectorization
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeInstCombine" initializeInstCombine
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeIPO" initializeIPO
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeInstrumentation" initializeInstrumentation
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeAnalysis" initializeAnalysis
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeIPA" initializeIPA
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeCodeGen" initializeCodeGen
    :: PassRegistryRef -> IO ()
foreign import ccall unsafe "LLVMInitializeTarget" initializeTarget
    :: PassRegistryRef -> IO ()
