command! -nargs=0 Reload e! %
command! -nargs=0 MkdirCurrentFile !mkdir -p %:h
"" Git
command! -nargs=0 GitStatus !git status
command! -nargs=0 GitAddAll !git add -A
command! -nargs=0 GitHistory !git l
command! -nargs=1 GitCommit !git commit -m <f-args>
"" Make
command! -nargs=1 Make !make <f-args>
