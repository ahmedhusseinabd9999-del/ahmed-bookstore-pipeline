FROM nginx:alpine

# تعديل صلاحيات المجلدات عشان Nginx يشتغل بمستخدم عادي (Non-root)
# دي حركة "صايعة" تقنياً عشان قيود OpenShift
RUN chmod -R 777 /var/cache/nginx /var/run /var/log/nginx

# نسخ ملف الإعدادات الخاص بنا
COPY nginx.conf /etc/nginx/nginx.conf

# نسخ ملفات الـ HTML والـ CSS
COPY html/ /usr/share/nginx/html/

# البورت المفضل في OpenShift
EXPOSE 8080

# التبديل لمستخدم غير الـ root
USER 1001

CMD ["nginx", "-g", "daemon off;"]
