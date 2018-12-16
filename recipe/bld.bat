rem Use upstream gopath setup
call set_gopath.bat

rem Build binaries
call build.bat

rem Move binaries in place
mkdir %LIBRARY_PREFIX%\bin
xcopy /s /y bin\* %LIBRARY_PREFIX%\bin\
