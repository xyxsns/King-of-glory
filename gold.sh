#!/bin/bash
#VERSION V1.0

#冒险模式 刷金币
echo 王者荣耀冒险模式
adb shell input tap 1600 750
sleep 2
#挑战
echo 挑战
adb shell input tap 1000 550
sleep 2
#稷下战场
echo 稷下战场
adb shell input tap 1120 570
sleep 1
#下一步
echo 下一步
adb shell input tap 1600 975
sleep 2

for i in {1..8}
do
    echo $i start the game
    #闯关
    echo $i 闯关40s
    adb shell input tap 1450 910
    sleep 40

    #跳过
    # echo $i 跳过2s
    # adb shell input tap 1800 70
    # sleep 2
    #自动
    echo $i 自动150s
    adb shell input tap 1800 40

    sleep 150

    #点击屏幕继续
    echo $i 点击屏幕继续3s
    adb shell input tap 1000 1000
    sleep 3
    #再次挑战
    echo $i 再次挑战5s
    adb shell input tap 1600 980
    sleep 5


    echo $i end  the game
done