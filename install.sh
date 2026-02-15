#!/bin/bash

# 1. إذا تم تشغيل السكريبت بدون خيارات، فإنه يثبت نفسه في النظام
if [ -z "$1" ]; then
    echo "⚙️ جاري زرع مدير الأدوات pgdjlgs في قلب النظام..."
    # تحميل النسخة وتخزينها كأمر دائم
    sudo curl -sL https://bit.ly/4aANArC -o /usr/local/bin/dw-pgdjlgs
    sudo chmod +x /usr/local/bin/dw-pgdjlgs
    echo "✅ تم التثبيت! الآن يمكنك استخدام الأمر: sudo dw-pgdjlgs -s pass"
    exit 0
fi

# 2. منطق تحميل الأدوات الأخرى من مستودعك
RAW_URL="https://raw.githubusercontent.com/pgdjlgs/tols/main"

if [ "$1" == "-s" ]; then
    TOOL=$2
    echo "🌐 جاري استدعاء الأداة [$TOOL] من السحاب..."
    sudo curl -sL "$RAW_URL/$TOOL" -o "/usr/local/bin/$TOOL"
    sudo chmod +x "/usr/local/bin/$TOOL"
    echo "✨ الأداة [$TOOL] أصبحت جاهزة في نظامك الآن."
fi
