export def main [] { return {
    separator: "#28292a"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#06ea61" attr: "b" }
    empty: "#03aeff"
    bool: {|| if $in { "#42fff9" } else { "light_gray" } }
    int: "#28292a"
    filesize: {|e|
        if $e == 0b {
            "#28292a"
        } else if $e < 1mb {
            "#42fff9"
        } else {{ fg: "#03aeff" }}
    }
    duration: "#28292a"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#b53b50" attr: "b" }
        } else if $in < 6hr {
            "#b53b50"
        } else if $in < 1day {
            "#c9d364"
        } else if $in < 3day {
            "#06ea61"
        } else if $in < 1wk {
            { fg: "#06ea61" attr: "b" }
        } else if $in < 6wk {
            "#42fff9"
        } else if $in < 52wk {
            "#03aeff"
        } else { "dark_gray" }
    }
    range: "#28292a"
    float: "#28292a"
    string: "#28292a"
    nothing: "#28292a"
    binary: "#28292a"
    cellpath: "#28292a"
    row_index: { fg: "#06ea61" attr: "b" }
    record: "#28292a"
    list: "#28292a"
    block: "#28292a"
    hints: "dark_gray"

    shape_and: { fg: "#ea5ce2" attr: "b" }
    shape_binary: { fg: "#ea5ce2" attr: "b" }
    shape_block: { fg: "#03aeff" attr: "b" }
    shape_bool: "#42fff9"
    shape_custom: "#06ea61"
    shape_datetime: { fg: "#42fff9" attr: "b" }
    shape_directory: "#42fff9"
    shape_external: "#42fff9"
    shape_externalarg: { fg: "#06ea61" attr: "b" }
    shape_filepath: "#42fff9"
    shape_flag: { fg: "#03aeff" attr: "b" }
    shape_float: { fg: "#ea5ce2" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#42fff9" attr: "b" }
    shape_int: { fg: "#ea5ce2" attr: "b" }
    shape_internalcall: { fg: "#42fff9" attr: "b" }
    shape_list: { fg: "#42fff9" attr: "b" }
    shape_literal: "#03aeff"
    shape_match_pattern: "#06ea61"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#42fff9"
    shape_operator: "#c9d364"
    shape_or: { fg: "#ea5ce2" attr: "b" }
    shape_pipe: { fg: "#ea5ce2" attr: "b" }
    shape_range: { fg: "#c9d364" attr: "b" }
    shape_record: { fg: "#42fff9" attr: "b" }
    shape_redirection: { fg: "#ea5ce2" attr: "b" }
    shape_signature: { fg: "#06ea61" attr: "b" }
    shape_string: "#06ea61"
    shape_string_interpolation: { fg: "#42fff9" attr: "b" }
    shape_table: { fg: "#03aeff" attr: "b" }
    shape_variable: "#ea5ce2"

    background: "#dddfe0"
    foreground: "#28292a"
    cursor: "#28292a"
}}