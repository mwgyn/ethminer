if(APPLE)

# patch for VS2013 and Windows Qt build
elseif(WIN32)
ExternalProject_Add(icu
	GIT_REPOSITORY https://github.com/debris/icu-win32.git
	GIT_TAG master
	BINARY_DIR icu-prefix/src/icu
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND cmd /c cp lib/*.lib ${ETH_DEPENDENCY_INSTALL_DIR}/lib && cp -R include/unicode ${ETH_DEPENDENCY_INSTALL_DIR}/include
	)

else()

endif()


