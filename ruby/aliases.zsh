alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias spec='rspec'
alias rs='rails s'
alias rc='rails c'
alias krs='ps aux | grep rails | grep -v grep | awk '"'"'{print $2}'"'"' | xargs kill -9'
alias sskeleton="rake test:migrations RAILS_ENV=testing_skeleton"
alias update-default-gems='while read in; do gem install "$in"; done < $ZSH/ruby/rbenv/default-gems'

alias lolcommits-timelapse='convert `find $LOLCOMMITS_DIR/. -type f -name "*.jpg" -print0 | xargs -0 ls -tlr | awk '"'"'{print $9}'"'"'` timelapse.mpeg'
