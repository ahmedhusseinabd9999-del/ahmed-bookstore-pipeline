 # استخدم نسخة slim عشان المساحة تكون صغيرة والأمان أعلى
FROM node:18-slim

# إنشاء مجلد التطبيق
WORKDIR /usr/src/app

# نسخ ملفات الـ dependencies أولاً (عشان الـ Caching)
COPY package*.json ./

# تنصيب المكتبات (Production only)
RUN npm install --only=production

# نسخ كود التطبيق
COPY . .

# التبديل لمستخدم غير الـ root (مهم جداً لنقاط الأمان في المشروع)
USER 1001

# البورت اللي الباك اند شغال عليه
EXPOSE 3000

CMD ["node", "server.js"]
