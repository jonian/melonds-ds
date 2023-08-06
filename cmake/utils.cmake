function(dump_cmake_variables)
    get_cmake_property(_variableNames VARIABLES)
    list(SORT _variableNames)
    foreach (_variableName ${_variableNames})
        if (ARGV0)
            unset(MATCHED)
            string(REGEX MATCH ${ARGV0} MATCHED ${_variableName})
            if (NOT MATCHED)
                continue()
            endif ()
        endif ()
        message(DEBUG "${_variableName}=${${_variableName}}")
    endforeach ()
endfunction()