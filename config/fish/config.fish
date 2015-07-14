# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

set fish_color_status red

function fish_mode_prompt
end

function fish_prompt
  set -l last_status $status
  set -l status_color

  set_color $fish_color_cwd
  echo -n (prompt_pwd)

  if test $last_status -ne 0
    set_color $fish_color_status
  else
    set_color normal
  end

  echo -n '> '
  set_color normal
end

function fish_right_prompt
  __fish_git_prompt
  if begin; set -q __fish_vi_mode; and not set -q fish_execute_repaint; end
    switch $fish_bind_mode
      case default
        set_color --bold --background red white
        echo -n '[N]'
      case visual
        set_color --bold --background magenta white
        echo -n '[V]'
    end
    set_color normal
  end
end

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_visual block
fish_vi_mode
fish_vi_cursor

