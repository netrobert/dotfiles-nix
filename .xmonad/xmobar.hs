Config {
    position = Top,
    font = "xft:Iosevka:style=Regular:size=12:antialias=true,M+ 1mn:style=regular:size=12:antialias=true,siji:size=13:antialias=true",
    bgColor = "#0F0F0F",
    fgColor = "#C2C5C6",
    border = BottomB,
    borderColor = "#171717",
    borderWidth = 1,
    lowerOnStart = True,
    hideOnStart = False,
    overrideRedirect = False,
    allDesktops = True,
    persistent = False,
    commands = [
        Run MultiCpu [
            "-t", "<fc=#CC6666>cpu</fc> <total>%",
            --"-t", "<fc=#9C4A4F>cpu</fc> <total>%",
            "-L", "10",
            "-H", "70",
            "--high", "#FFB6B0"
            ] 10,
        Run MultiCoreTemp [
            "-t", "<fc=#CC6666>cputemp</fc> <avg>°C",
            --"-t", "<fc=#CC6666>cputemp</fc> <avg>°C",
            "-L", "50", "-H", "80",
            "-h", "red"
            ] 10,
        Run Memory [
            "-t","<fc=#CC6666>mem</fc> <usedratio>%",
            --"-t","<fc=#9C4A4F>mem</fc> <usedratio>%",
            "-H","3000","-h","#FFB6B0"
            ] 10,
        --Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        --Run Date "<fc=#CC6666></fc> <fc=#C2C5C6>%F, %a</fc> <fc=#CC6666></fc> <fc=#C2C5C6>%H:%M</fc>" "date" 10,
        Run Date "<fc=#9C4A4F>[</fc> <fc=#C2C5C6>%F</fc> <fc=#C2C5C6>%H:%M</fc> <fc=#9C4A4F>]</fc>"  "date" 10,
        Run Network "enp3s0" ["-t","<fc=#9C4A4F></fc> <rx> KB/s <fc=#9C4A4F></fc> <tx> KB/s"] 10,
        --Run Network "lo" ["-t","<fc=#CC6666>down</fc> <rx> KB/s <fc=#CC6666>up</fc> <tx> KB/s"] 10,
	Run Com "/home/robert/scripts/getMasterVolume" [] "volumelevel" 1,
        Run Com "/home/robert/scripts/getRedshift" [] "redshift" 60,
        Run StdinReader
        ],
    sepChar = "%",
    alignSep = "||",
    template = "%StdinReader% || %volumelevel% | %multicpu% | %memory% | <fc=#FFFFCC>%date%</fc> "
    --template = "%stdinreader% || %mpd% | %volumelevel% | %multicpu% | %multicoretemp% | %memory% | <fc=#FFFFCC>%date%</fc> | %redshift%"
}
