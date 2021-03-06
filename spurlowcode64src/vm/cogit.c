/* Automatically generated by
	Cogit VMMaker.oscog-nice.2714 uuid: 9fb2d939-6a11-4c06-9e0f-6805c9aa48d3
 */

#if !SysV && !_WIN64
# define SysV 1
#endif

#if defined(__arm64__) || defined(__aarch64__) || defined(__ARM_ARCH_ISA_A64) || defined(ARM64) || defined(ARMv8)

#	include "cogitARMv8.c"

#elif SysV && (defined(x86_64) || defined(__amd64) || defined(__x86_64) || defined(__amd64__) || defined(__x86_64__) || defined(_M_AMD64) || defined(_M_X64))

#	include "cogitX64SysV.c"

#elif _WIN64 && (defined(x86_64) || defined(__amd64) || defined(__x86_64) || defined(__amd64__) || defined(__x86_64__) || defined(_M_AMD64) || defined(_M_X64))

#	include "cogitX64WIN64.c"

#else
#	error As yet no Cogit implementation appears to exist for your platform.
#	error Consider implementing it, starting by adding a subclass of CogAbstractInstruction.
#endif
