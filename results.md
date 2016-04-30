# Results Log

## 2016/4/28: 2.2.1-RELEASE: FAILURE

* **Status:** FAILURE ("Pointer is not sufficiently aligned")
* **Script:** build-swift-2.2.1-RELEASE.sh
* **SHAs:** [shas-swift-2.2.1-RELEASE.bash](/arm/shas-swift-2.2.1-RELEASE.bash)
* **Hardware:** Raspberry Pi 3 (armv7l)
* **OS:** raspbian/jessie, clang-3.7

```bash
swift: /home/cell/swift_builds/10_2.2.1/swift_src/llvm/include/llvm/ADT/PointerIntPair.h:114:
void llvm::PointerIntPair<swift::ProtocolConformance *, 2, swift::ConformanceKind,
llvm::PointerLikeTypeTraits<swift::ProtocolConformance *> >::setPointerAndInt(PointerTy, IntType)
[PointerTy = swift::ProtocolConformance *, IntBits = 2, IntType = swift::ConformanceKind, PtrTraits =
llvm::PointerLikeTypeTraits<swift::ProtocolConformance *>]: Assertion `(PtrWord & ~PointerBitMask) == 0 &&
"Pointer is not sufficiently aligned"' failed.
Stack dump:
0.	Program arguments: /mnt/sda1/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/bin/swift
-frontend -c /home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Algorithm.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ArrayBody.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ArrayBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ArrayBufferType.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ArrayCast.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ArrayType.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Arrays.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Assert.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/AssertCommon.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Bool.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/BooleanType.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/BridgeObjectiveC.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/BridgeStorage.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Builtin.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/BuiltinMath.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/CString.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/CTypes.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Character.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/CocoaArray.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Collection.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/CollectionAlgorithms.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/CompilerProtocols.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ContiguousArrayBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/EmptyCollection.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ErrorType.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Existential.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Filter.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/FixedPoint.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Flatten.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/FlatMap.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/FloatingPoint.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/FloatingPointOperations.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/FloatingPointParsing.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/HashedCollections.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Hashing.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/HeapBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ImplicitlyUnwrappedOptional.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Index.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/InputStream.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/IntegerArithmetic.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/IntegerParsing.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Interval.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Join.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/LazyCollection.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/LazySequence.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/LifetimeManager.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ManagedBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Map.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Mirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Misc.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ObjCMirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Optional.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/OptionSet.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/OutputStream.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Pointer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Policy.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Print.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/REPL.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Range.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/RangeMirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/RangeReplaceableCollectionType.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Reflection.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Repeat.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Reverse.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Runtime.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Sequence.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/SequenceWrapper.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/SequenceAlgorithms.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/SetAlgebra.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/ShadowProtocols.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Shims.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Slice.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Sort.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StaticString.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Stride.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/StrideMirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringCharacterView.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/String.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringBridge.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringCore.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/StringInterpolation.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringLegacy.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringUnicodeScalarView.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringUTF16.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/StringUTF8.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/StringUTFViewsMirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/SwiftNativeNSArray.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Unicode.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/UnicodeScalar.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/UnicodeTrie.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/UnavailableStringAPIs.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Unmanaged.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/UnsafeBufferPointer.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/UnsafePointer.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Availability.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Bit.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/CollectionMirrors.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/CollectionOfOne.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/ExistentialCollection.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Mirror.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Process.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/SliceBuffer.swift
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/4/Tuple.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/VarArgs.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Zip.swift
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Prespecialized.swift
-disable-objc-attr-requires-foundation-module -target armv7-unknown-linux-gnueabihf -disable-objc-interop -sdk / -I
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/./lib/swift/linux/armv7
-module-cache-path
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/./clang-module-cache
-module-link-name swiftCore -nostdimport -parse-stdlib
-D INTERNAL_CHECKS_ENABLED -sil-serialize-all -emit-module-doc-path
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/./lib/swift/linux/armv7/Swift.swiftdoc
-O -parse-as-library -module-name Swift -emit-module-path
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/./lib/swift/linux/armv7/Swift.swiftmodule
-o
/home/cell/swift_builds/10_2.2.1/swift_build/Ninja-ReleaseAssert/swift-linux-armv7/stdlib/public/core/linux/armv7/Swift.o
1.	While type-checking 'EnumerateSequence' at
/home/cell/swift_builds/10_2.2.1/swift_src/swift/stdlib/public/core/Algorithm.swift:192:8
ninja: build stopped: subcommand failed.
/home/cell/swift_builds/10_2.2.1/swift_src/swift/utils/build-script: command terminated with a non-zero exit status
1, aborting
```

## 2016/4/29: 2.2.1-Release: SUCCESS

This build added @hpux735's ProtocolConformance patch.

The build succeeded, but running `Ninja-ReleaseAssert/swift-linux-armv7/bin/swiftc` results in:

```
<unknown>:0: error: unable to load standard library for target 'armv7l-unknown-linux-gnueabihf'
```

