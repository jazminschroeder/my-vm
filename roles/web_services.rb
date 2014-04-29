name "rails-dev"
description "setup for ruby on rails core development"
run_list(
  "recipe[apt]",
  "recipe[ssh]",
  "recipe[git]",
  "recipe[vim]",
  "recipe[ruby_build]",
  "recipe[rbenv::user]",
  "recipe[rbenv::vagrant]",
  "recipe[tmux]",
  "recipe[elasticsearch]",
  "recipe[postgresql::server]",
  "recipe[postgresql::ruby]",
  "recipe[database]"
)
