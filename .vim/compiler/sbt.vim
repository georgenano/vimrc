if exists("current_compiler")
      finish
endif
let current_compiler = "sbt"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

if isdirectory("project") && isdirectory("target") &&
      \ ( glob("*.sbt") != "" || glob("project/*.scala") != "" )
  let $SBT_OPTS = "-Dsbt.log.noformat=true ".$SBT_OPTS

  CompilerSet makeprg=sbt\ compile

  CompilerSet errorformat=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
                         \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
                         \%-G%.%#

  CompilerSet errorfile=target/error
endif
