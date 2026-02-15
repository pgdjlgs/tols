#!/bin/bash
echo "⚙️ جاري تثبيت أداة PASS في النظام..."
chmod +x pass
sudo cp pass /usr/local/bin/pass
echo "✅ تم التثبيت بنجاح! جرب كتابة 'pass wd' الآن."
