function humantime --argument-names ms --description "Turn milliseconds into a human-readable string"
    set --query ms[1] || return

    test (math --scale=0 $ms/1000) -lt 1 && echo $ms"ms" && return

    set --local secs (math --scale=1 $ms/1000)
    set --local mins (math --scale=0 $ms/60000)
    set --local hours (math --scale=0 $ms/3600000)

    test $hours -gt 0 && set --local --append out $hours"h"
    test $mins -gt 0 && set --local --append out $mins"m"
    test $secs -gt 0 && set --local --append out $secs"s"

    echo $out
end
