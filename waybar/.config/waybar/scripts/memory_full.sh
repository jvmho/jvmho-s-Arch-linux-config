#!/bin/bash
# Получаем данные из /proc/meminfo
read -r mem_total_kb mem_avail_kb swap_total_kb swap_free_kb < <(
    awk '/MemTotal:/ {mt=$2}
         /MemAvailable:/ {ma=$2}
         /SwapTotal:/  {st=$2}
         /SwapFree:/   {sf=$2}
         END {print mt, ma, st, sf}' /proc/meminfo
)

mem_used_kb=$((mem_total_kb - mem_avail_kb))
swap_used_kb=$((swap_total_kb - swap_free_kb))

human_kb() {
    local kb=$1
    if (( kb >= 1048576 )); then
        printf "%.1fG" "$(echo "$kb/1048576" | bc -l)"
    elif (( kb >= 1024 )); then
        printf "%.1fM" "$(echo "$kb/1024" | bc -l)"
    else
        printf "%dK" "$kb"
    fi
}

mem_used_h=$(human_kb $mem_used_kb)
mem_total_h=$(human_kb $mem_total_kb)
swap_used_h=$(human_kb $swap_used_kb)
swap_total_h=$(human_kb $swap_total_kb)

if (( mem_total_kb > 0 )); then
    mem_percent=$(( (mem_used_kb * 100) / mem_total_kb ))
else
    mem_percent=0
fi

if   (( mem_percent < 60 )); then class="low"
elif (( mem_percent < 80 )); then class="warning"
else class="critical"
fi

icon_ram=" "
icon_swap="󰾰 "

# Прижатые значения: иконка + цифры без пробела, вокруг '|' по одному пробелу
printf '{"text": "%s%s/%s | %s%s/%s", "class": "%s", "percentage": %d}\n' \
    "$icon_ram" "$mem_used_h" "$mem_total_h" \
    "$icon_swap" "$swap_used_h" "$swap_total_h" \
    "$class" "$mem_percent"
