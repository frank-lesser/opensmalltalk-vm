set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS)
if(WIN32)
    set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS)
    set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP TRUE)
    include(InstallRequiredSystemLibraries)
endif()

set(MINGW_LIB_DIR)
if(SQUEAK_PLATFORM_X86_32)
    set(USED_MINGW_LIBRARIES libgcc_s_sjlj-1.dll libwinpthread-1.dll iconv.dll)
    set(MINGW_LIB_DIR /usr/i686-w64-mingw32/sys-root/mingw/bin)
elseif(SQUEAK_PLATFORM_X86_64)
    set(USED_MINGW_LIBRARIES libgcc_s_seh-1.dll libwinpthread-1.dll iconv.dll)
    set(MINGW_LIB_DIR /usr/x86_64-w64-mingw32/sys-root/mingw/bin)
endif()

set(MINGW_LIBRARIES)
foreach(lib ${USED_MINGW_LIBRARIES})
    if(EXISTS "${MINGW_LIB_DIR}/${lib}")
        set(MINGW_LIBRARIES ${MINGW_LIBRARIES} "${MINGW_LIB_DIR}/${lib}")
    endif()
endforeach()

install(PROGRAMS ${CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS} ${MINGW_LIBRARIES}
    DESTINATION ${ProductInstallProgramFolder}
)
