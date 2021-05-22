alias ll='ls -lG'





#optional:
alias pstorm='open -ga PHPStorm '

# copy the path to the current working directory
alias cpth='pwd | pbcopy'



# I already install PHP 8 as my main version of PHP, but sometimes I need to run 7.4 for legacy reasons.
# This is almost always because composer needs it. So I make a composer74 alias that runs it that way.
# (Also, if I'm running composer outsideo of a container, it usually means the container doesn't give it enough memory. So I toggle that as well.)
alias composer74='/usr/local/Cellar/php\@7.4/7.4.19_1/bin/php -d memory_limit=-1 /usr/local/bin/composer'




# I placed a script called "php" in /usr/local/bin, launching a containerized PHP instance.
# If I want to run my original "host" version of PHP, I can use this alias.
# (hphp is also the command for the old HipHop transpiler, but that's been discontinued, so I'm not worried about a conflict.)
alias hphp='/usr/bin/php'

# Likewise, if I want to run composer using my host's copy of PHP, I can use this alias.
alias hcomposer='hphp /usr/local/bin/composer'





if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
#This git autocompletion has a dependency - you must install the script, of course.
#See https://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line








# === docker === #

# list all containers created
alias docps="docker ps --all "

# only ids of containers
alias docids="docker ps --all --quiet"

# remove all created containers
alias docrma="docids | xargs docker rm"

# stop all created containers
alias docstopa="docids | xargs docker stop"

# because docker-compose is too much to type
alias docompose="docker-compose $@"

# stop and remove all containers
alias docnuke="docstopa && docrma"

# updates all docker images
alias docpull='for img in $(docker images --format "{{.Repository}}:{{.Tag}}"); do docker pull $img; done'
