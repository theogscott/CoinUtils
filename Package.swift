// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoinUtils",
    
    // MARK: - Platforms supported
    // -----------------------------------------------------------------
    //  1. Platforms Versions – macOS, iOS, etc.
    // -----------------------------------------------------------------
    platforms: [
        .iOS(.v15),   // iOS 15+ (or later)
        .macOS(.v13)   // macOS 13+ (Ventura) – adjust if you need an older version
                      // add more later:
                    /// Linux: Visual Studio Code, CLion, JetBrains AppCode (via remote dev), vim/emacs + LSP, Swift Playground Docker images.
                    /// Windows: VS Code (Swift extension), CLion, Visual Studio Code with LSP; JetBrains AppCode via remote‑dev or macOS VM

    ],
    
    // MARK: - Products (what the package vends to clients)
    // -----------------------------------------------------------------
    //  2. Products – expose a library that downstream code can import.
    // -----------------------------------------------------------------
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "libCoinUtils",
            type: .static, // static because of sandboxing.
            targets: ["libCoinUtils"]
        ),
    ],
    
    // MARK: - Dependencies
    // -----------------------------------------------------------------
    // 3. Depependent on others - none at the moment
    // -----------------------------------------------------------------
    dependencies: [],
    
    // MARK: – Targets (the actual code and test suite)
    // --------------------------------------------------------------------
    // 4. Targets – split into a C++ library and a C and/or Swift wrapper
    //
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    // --------------------------------------------------------------------
    targets: [
        // ------------------------------------------------------------
        // 4a C++ target (only .cpp/.hpp files)
        // ------------------------------------------------------------
        .target(
            name: "libCoinUtils",  // internal name – can be anything
            dependencies: [],         // No external modules
            path: "src", // folder that holds the C++ files
            exclude: ["src/Coin_C_defines.h", // We list all files, ands thosse headers thty must part of the library, are commented  out.
                      //"src/CoinAdjacencyVector.hpp", //  will be part if the lib
                      "src/CoinAlloc.hpp",  // will be exlude CoinAlloc
                      //"src/CoinBronKerbosch.hpp",
                      "src/CoinBuild.hpp",
                      //"src/CoinCliqueExtender.hpp",
                      //"src/CoinCliqueList.hpp",
                      //"src/CoinCliqueSet.hpp",
                      "src/CoinColumnType.hpp",
                      //"src/CoinConflictGraph.hpp",
                      //"src/CoinCutPool.hpp",
                      "src/CoinDenseFactorization.hpp",
                      "src/CoinDenseVector.hpp",
                      "src/CoinDistance.hpp",
                      //"src/CoinDynamicConflictGraph.hpp",
                      "src/CoinError.hpp",
                      "src/CoinFactorization.hpp",
                      "src/CoinFileIO.hpp",
                      "src/CoinFinite.hpp",
                      "src/CoinFloatEqual.hpp",
                      "src/CoinHelperFunctions.hpp",
                      "src/CoinIndexedVector.hpp",
                      "src/CoinKnapsackRow.hpp",
                      "src/CoinLpIO.hpp",
                      "src/CoinMessage.hpp",
                      "src/CoinMessageHandler.hpp",
                      "src/CoinModel.hpp",
                      "src/CoinModelUseful.hpp",
                      "src/CoinMpsIO.hpp",
                      // "src/CoinNodeHeap.hpp",
                      //"src/CoinOddWheelSeparator.hpp",
                      "src/CoinOslC.h",
                      "src/CoinOslFactorization.hpp",
                      "src/CoinPackedMatrix.hpp",
                      "src/CoinPackedVector.hpp",
                      "src/CoinPackedVectorBase.hpp",
                      "src/CoinParam.hpp",
                      "src/CoinPragma.hpp",
                      "src/CoinPresolveDoubleton.hpp",
                      "src/CoinPresolveDual.hpp",
                      "src/CoinPresolveDupcol.hpp",
                      "src/CoinPresolveEmpty.hpp",
                      "src/CoinPresolveFixed.hpp",
                      "src/CoinPresolveForcing.hpp",
                      "src/CoinPresolveImpliedFree.hpp",
                      "src/CoinPresolveIsolated.hpp",
                      "src/CoinPresolveMatrix.hpp",
                      "src/CoinPresolveMonitor.hpp",
                      "src/CoinPresolvePsdebug.hpp",
                      "src/CoinPresolveSingleton.hpp",
                      "src/CoinPresolveSubst.hpp",
                      "src/CoinPresolveTighten.hpp",
                      "src/CoinPresolveTripleton.hpp",
                      "src/CoinPresolveUseless.hpp",
                      "src/CoinPresolveZeros.hpp",
                      "src/CoinRational.hpp",
                      "src/CoinSearchTree.hpp",
                      "src/CoinShallowPackedVector.hpp",
                      //"src/CoinShortestPath.hpp",
                      "src/CoinSignal.hpp",
                      "src/CoinSimpFactorization.hpp",
                      "src/CoinSmartPtr.hpp",
                      "src/CoinSnapshot.hpp",
                      "src/CoinSort.hpp",
                      //"src/CoinStaticConflictGraph.hpp",
                      "src/CoinStructuredModel.hpp",
                      "src/CoinTerm.hpp",
                      "src/CoinTime.hpp",
                      "src/CoinTypes.h",
                      "src/CoinUtility.hpp",
                     //"src/CoinUtilsConfig.h",
                      "src/CoinWarmStart.hpp",
                      "src/CoinWarmStartBasis.hpp",
                      "src/CoinWarmStartDual.hpp",
                      "src/CoinWarmStartPrimalDual.hpp",
                      "src/CoinWarmStartVector.hpp",
                      "src/config_coinutils_default.h",
                      "src/config_coinutils.h.in",
                      "src/config_default.h",
                      "src/config.h.in",
                      "src/configall_system_aaplxcode",
                      "src/configall_system_msc.h",
                      "src/configall_system.h"],
            sources: [  // The C++ files to be included in the build
                "CoinAdjacencyVector.cpp",
                "CoinAlloc.cpp",
                "CoinBronKerbosch.cpp",
                "CoinBuild.cpp",
                "CoinCliqueExtender.cpp",
                "CoinCliqueList.cpp",
                "CoinCliqueSet.cpp",
                "CoinConflictGraph.cpp",
                "CoinCutPool.cpp",
                "CoinDenseFactorization.cpp",
                "CoinDenseVector.cpp",
                "CoinDynamicConflictGraph.cpp",
                "CoinError.cpp",
                "CoinFactorization1.cpp",
                "CoinFactorization2.cpp",
                "CoinFactorization3.cpp",
                "CoinFactorization4.cpp",
                "CoinFileIO.cpp",
                "CoinFinite.cpp",
                "CoinIndexedVector.cpp",
                "CoinKnapsackRow.cpp",
                "CoinLpIO.cpp",
                "CoinMessage.cpp",
                "CoinMessageHandler.cpp",
                "CoinModel.cpp",
                "CoinModelUseful.cpp",
                "CoinModelUseful2.cpp",
                "CoinMpsIO.cpp",
                "CoinNodeHeap.cpp",
                "CoinOddWheelSeparator.cpp",
                "CoinOslFactorization.cpp",
                "CoinOslFactorization2.cpp",
                "CoinOslFactorization3.cpp",
                "CoinPackedMatrix.cpp",
                "CoinPackedVector.cpp",
                "CoinPackedVectorBase.cpp",
                "CoinParam.cpp",
                "CoinParamUtils.cpp",
                "CoinPostsolveMatrix.cpp",
                "CoinPrePostsolveMatrix.cpp",
                "CoinPresolveDoubleton.cpp",
                "CoinPresolveDual.cpp",
                "CoinPresolveDupcol.cpp",
                "CoinPresolveEmpty.cpp",
                "CoinPresolveFixed.cpp",
                "CoinPresolveForcing.cpp",
                "CoinPresolveHelperFunctions.cpp",
                "CoinPresolveImpliedFree.cpp",
                "CoinPresolveIsolated.cpp",
                "CoinPresolveMatrix.cpp",
                "CoinPresolvePsdebug.cpp",
                "CoinPresolveSingleton.cpp",
                "CoinPresolveSubst.cpp",
                "CoinPresolveTighten.cpp",
                "CoinPresolveTripleton.cpp",
                "CoinPresolveUseless.cpp",
                "CoinPresolveZeros.cpp",
                "CoinRational.cpp",
                "CoinSearchTree.cpp",
                "CoinShallowPackedVector.cpp",
                "CoinShortestPath.cpp",
                "CoinSimpFactorization.cpp",
                "CoinSnapshot.cpp",
                "CoinStaticConflictGraph.cpp",
                "CoinStructuredModel.cpp",
                "CoinTerm.cpp",
                "CoinWarmStartBasis.cpp",
                "CoinWarmStartDual.cpp",
                "CoinWarmStartPrimalDual.cpp",
                "CoinWarmStartVector.cpp",
            ],
            
            // ---- Public headers --------------------------------------------------------------
            // Anything under `publicHeadersPath` becomes visible to *other* packages.
            // It also tells SPM where to look for the headers when it builds a Clang module.
            publicHeadersPath: ".",          // Anything inside src that ends with .h/.hpp becomes a public Clang module
           
            // ---- C++‑specific settings --------------------------------------------------------
            cxxSettings: [
                // Use the C++20 (or C++23) dialect – change if you need a different version.
                //.cxxStandard("c++20"), // use user default, aka Xcode version
                
                .define("COINUTILS_BUILD", to: "1"),
                
                // Tell the compiler where to find your headers from path sources
                .headerSearchPath(".")
            ]
        )
        
        // MARK: - Tests
        // -----------------------------------------------------------------
        //  TODO: To add once we have a sucessfull build
        //  Keeping below as template
        // -----------------------------------------------------------------
        //        ,
        //        .testTarget(
        //            name: "",
        //            dependencies: ["CoinUtils"] // Tests depends/run on the lib we testing
        //        ),
        
    ]
)
