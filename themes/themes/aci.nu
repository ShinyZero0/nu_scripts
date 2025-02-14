export def main [] { return {
    separator: "#b6b6b6"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#83ff08" attr: "b" }
    empty: "#0883ff"
    bool: {|| if $in { "#1eff8e" } else { "light_gray" } }
    int: "#b6b6b6"
    filesize: {|e|
        if $e == 0b {
            "#b6b6b6"
        } else if $e < 1mb {
            "#08ff83"
        } else {{ fg: "#0883ff" }}
    }
    duration: "#b6b6b6"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#ff0883" attr: "b" }
        } else if $in < 6hr {
            "#ff0883"
        } else if $in < 1day {
            "#ff8308"
        } else if $in < 3day {
            "#83ff08"
        } else if $in < 1wk {
            { fg: "#83ff08" attr: "b" }
        } else if $in < 6wk {
            "#08ff83"
        } else if $in < 52wk {
            "#0883ff"
        } else { "dark_gray" }
    }
    range: "#b6b6b6"
    float: "#b6b6b6"
    string: "#b6b6b6"
    nothing: "#b6b6b6"
    binary: "#b6b6b6"
    cellpath: "#b6b6b6"
    row_index: { fg: "#83ff08" attr: "b" }
    record: "#b6b6b6"
    list: "#b6b6b6"
    block: "#b6b6b6"
    hints: "dark_gray"

    shape_and: { fg: "#8308ff" attr: "b" }
    shape_binary: { fg: "#8308ff" attr: "b" }
    shape_block: { fg: "#0883ff" attr: "b" }
    shape_bool: "#1eff8e"
    shape_custom: "#83ff08"
    shape_datetime: { fg: "#08ff83" attr: "b" }
    shape_directory: "#08ff83"
    shape_external: "#08ff83"
    shape_externalarg: { fg: "#83ff08" attr: "b" }
    shape_filepath: "#08ff83"
    shape_flag: { fg: "#0883ff" attr: "b" }
    shape_float: { fg: "#8308ff" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#08ff83" attr: "b" }
    shape_int: { fg: "#8308ff" attr: "b" }
    shape_internalcall: { fg: "#08ff83" attr: "b" }
    shape_list: { fg: "#08ff83" attr: "b" }
    shape_literal: "#0883ff"
    shape_match_pattern: "#83ff08"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#1eff8e"
    shape_operator: "#ff8308"
    shape_or: { fg: "#8308ff" attr: "b" }
    shape_pipe: { fg: "#8308ff" attr: "b" }
    shape_range: { fg: "#ff8308" attr: "b" }
    shape_record: { fg: "#08ff83" attr: "b" }
    shape_redirection: { fg: "#8308ff" attr: "b" }
    shape_signature: { fg: "#83ff08" attr: "b" }
    shape_string: "#83ff08"
    shape_string_interpolation: { fg: "#08ff83" attr: "b" }
    shape_table: { fg: "#0883ff" attr: "b" }
    shape_variable: "#8308ff"

    background: "#0d1926"
    foreground: "#b4e1fd"
    cursor: "#b4e1fd"
}}