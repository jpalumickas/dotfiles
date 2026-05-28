function c --description 'cd into ~/Projects, or into a project within it'
    if test (count $argv) -eq 0
        cd ~/Projects
    else
        cd ~/Projects/$argv[1]
    end
end
